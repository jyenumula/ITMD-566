<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
.tbl_bg {
	background-color: #D7D7D7;
	border: 1px solid #898989;
}

.alt {
	background-color: #EBEBEB;
}

.altalt {
	background-color: #EBEBEB;
	border-bottom: 1px solid #898989;
}

.tbl_bg p {
	font-size: 0.8em;
	text-align: left;
	margin: 0;
	padding: 5px;
	font-family: Arial, Helvetica, sans-serif;
}

.lft_bdr {
	border-left: 1px solid #898989;
}

.input {
	width: 300px;
	border: 1px solid #ACACAC;
	margin: 0;
	padding: 2px;
}

textarea {
	width: 300px;
	height: 100px;
	border: 1px solid #ACACAC;
}
</style>
<script src="ValidateForm.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Hello World Java EE</title>
</head>
<body>
	<h1>Customer Form</h1>
	<form name="Data" action="DataServlet" method="post"
		onsubmit="return validateForm()">

		<tr>
			<td colspan="2" valign="top" class="altalt"><p>
					Customer Name:<input type="text" name="yourName" size="20">
				</p></td>
			<td width="150" valign="top"><p>
					SSN Number: <input type="text" name="yourSSN" size="20">
				</p></td>
			<td valign="top" class="alt"><p>
					ZIP Code: <input type="text" name="yourZip" size="20">
				</p></td>
			<td colspan="2" valign="top" class="altalt"><p>
					Email: <input type="text" name="yourEmail" size="20">
				</p></td>
			<td colspan="2" valign="top" class="altalt"><p>
					Address:<input type="text" name="yourAddress" size="20">
				</p></td>
			<td colspan="2" valign="top" class="altalt"><p>
					City: <input type="text" name="yourCity" size="20">
				</p></td>
			<td colspan="2" valign="top" class="altalt"><p>
					State: <select name="yourState">
						<option value="AL">AL</option>
						<option value="AK">AK</option>
						<option value="AR">AR</option>
						<option value="AZ">AZ</option>
						<option value="CA">CA</option>
						<option value="CO">CO</option>
						<option value="CT">CT</option>
						<option value="DC">DC</option>
						<option value="DE">DE</option>
						<option value="FL">FL</option>
						<option value="GA">GA</option>
						<option value="HI">HI</option>
						<option value="IA">IA</option>
						<option value="ID">ID</option>
						<option value="IL">IL</option>
						<option value="IN">IN</option>
						<option value="KS">KS</option>
						<option value="KY">KY</option>
						<option value="LA">LA</option>
						<option value="MA">MA</option>
						<option value="MD">MD</option>
						<option value="ME">ME</option>
						<option value="MI">MI</option>
						<option value="MN">MN</option>
						<option value="MO">MO</option>
						<option value="MS">MS</option>
						<option value="MT">MT</option>
						<option value="NC">NC</option>
						<option value="NE">NE</option>
						<option value="NH">NH</option>
						<option value="NJ">NJ</option>
						<option value="NM">NM</option>
						<option value="NV">NV</option>
						<option value="NY">NY</option>
						<option value="ND">ND</option>
						<option value="OH">OH</option>
						<option value="OK">OK</option>
						<option value="OR">OR</option>
						<option value="PA">PA</option>
						<option value="RI">RI</option>
						<option value="SC">SC</option>
						<option value="SD">SD</option>
						<option value="TN">TN</option>
						<option value="TX">TX</option>
						<option value="UT">UT</option>
						<option value="VT">VT</option>
						<option value="VA">VA</option>
						<option value="WA">WA</option>
						<option value="WI">WI</option>
						<option value="WV">WV</option>
						<option value="WY">WY</option>
					</select>
				</p></td>
			<input type="submit" value="Submit" />
			<p>Message: ${message}</p>
		</tr>
	</form>
</body>
</html>