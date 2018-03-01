package com.itmd566;

import java.io.IOException;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.ConstraintViolation;
import javax.validation.Validation;
import javax.validation.Validator;
import javax.validation.ValidatorFactory;

import com.google.maps.GeoApiContext;
import com.google.maps.GeocodingApi;
import com.google.maps.model.GeocodingResult;


@WebServlet("/dataServlet")
public class DataServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	GeocodingResult[] results;
	Data customer = new Data();
	ValidatorFactory factory = Validation.buildDefaultValidatorFactory();
	Validator validator = factory.getValidator();
	String API_Key= "AIzaSyA20ZnVqjV52F5a_dulG7dt_Qq6t4UztQ0";
	boolean message=false;
	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public DataServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		message=false;
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		customer.setZip(request.getParameter("yourZip"));
		customer.setEmail(request.getParameter("yourEmail"));
		session.setAttribute("Name", request.getParameter("yourName"));
		session.setAttribute("Ssn", request.getParameter("yourSSN"));
		session.setAttribute("Zip", request.getParameter("yourZip"));
		session.setAttribute("Email", request.getParameter("yourEmail"));
		session.setAttribute("Address", request.getParameter("yourAddress"));
		session.setAttribute("City", request.getParameter("yourCity"));
		session.setAttribute("State", request.getParameter("yourState"));
		response.setContentType("text/html");
		Set<ConstraintViolation<Data>> violations = validator.validate(customer);
		for (ConstraintViolation<Data> violation : violations) {
		    System.out.println(violation.getMessage()); 
		    request.setAttribute("message", violation.getMessage());
		   message=true;
		}
		GeoApiContext context = new GeoApiContext().setApiKey(API_Key);

		try {
			results = GeocodingApi.geocode(
					context,
					request.getParameter("yourAddress")+" "+request.getParameter("yourCity")+", "+request.getParameter("yourState")+ " "+request.getParameter("yourZip")).await();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println(results[0].geometry.location.lat);
		session.setAttribute("lat", results[0].geometry.location.lat);
		session.setAttribute("long", results[0].geometry.location.lng);
	
		if(message) {
			 request.getRequestDispatcher("/GetFormData.jsp").forward(request, response);
		}
		else {
			request.getRequestDispatcher("/ValidatingDataRequest.jsp").forward(request, response);
		}
	}

	
}
