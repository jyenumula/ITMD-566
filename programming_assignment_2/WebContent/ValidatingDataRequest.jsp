<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>  
<body>  
<%   
  
String name=(String)session.getAttribute("Name"); 
String ssn = (String)session.getAttribute("Ssn");
String zip = (String)session.getAttribute("Zip");
String email = (String)session.getAttribute("Email");
String address = (String)session.getAttribute("Address");
String city = (String)session.getAttribute("City");
String state = (String)session.getAttribute("State");
Double lat = (Double)session.getAttribute("lat");
Double lng = (Double)session.getAttribute("long");
out.println("<pre>"+"Welcome " +name+"</pre>");  
out.println("<pre>"+"Customer name " +name+"</pre>");  
out.println("<pre>"+"SSN: " +ssn+"</pre>");
out.println("<pre>"+"Zip: " +zip+"</pre>");
out.println("<pre>"+"Email: " +email+"</pre>");
out.println("<pre>"+"Address: " +address+"</pre>");
out.println("<pre>"+"City: " +city+"</pre>");
out.println("<pre>"+"State: " +state+"</pre>");
out.println("<pre>"+"Latitude: " +lat+"</pre>");
out.println("<pre>"+"Longitude: " +lng+"</pre>");
  
%>  
</body>  
</html>  