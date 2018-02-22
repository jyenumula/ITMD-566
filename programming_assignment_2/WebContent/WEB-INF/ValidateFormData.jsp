<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
</head>
<body>
    <style scoped>
    .container{
    	width: 25%;
    }
    p.message{
                color: green;
            }
    input[type=submit] {
                background-color: #4CAF50;
                color: white;
                padding: 10px 20px;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                border: none;
                border-radius: 4px;
                cursor: pointer;
            }
    input[type=submit]:hover {
                background-color: #45a049;
            }
    .form-control{
            color:grey;    
            }
    </style>
	<div class="container">
        <p class="message" style="font-size: 30px;">Validate Form Data</p>
	
        <form name="Validate input data" action="ValidateData" method="POST">
            
            <label for ="customerName">Customer Name</label>
            <input id = "customerName" name = "customerName" value="<%= request.getParameter("customerName") %>" /><br>
            <label for ="SSN">SSN</label>
            <input type = "text" id = "SSN" name = "SSN" value = "<%= request.getParameter("SSN") %>" /><br>
            <label for ="zipCode">Zip Code</label>
            <input id = "zipCode" name = "zipCode" value="<%= request.getParameter("zipCode") %>"  /><br>
            <label for ="email">Email</label>
            <input id = "email" name = "email" value="<%= request.getParameter("email") %>"  /><br>
            <label for ="address">Address</label>
            <input id = "address" name = "address" value="<%= request.getParameter("address") %>"/><br>
            <label for ="city">City</label>
            <input id = "city" name = "city" value="<%= request.getParameter("city") %>" /><br>
            <input type="submit" name="Submit" id="submit" />
            
        </form>
        </div>
    </body>
</html>
