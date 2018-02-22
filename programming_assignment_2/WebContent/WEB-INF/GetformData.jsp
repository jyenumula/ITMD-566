<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
        <p class="message" style="font-size: 30px;">Get Form Data</p>
	
        <form action="ValidateFormData.jsp" method="POST">
            <label for ="customerName">Customer Name</label>
            <input type = "text" id = "customerName" name = "customerName"  class="form-control" maxlength="50" required/>
            <label for ="SSN">Customer SSN</label>
            <input type="text" class="form-control" id="SSN" placeholder="###-##-####" maxlength="12" required>
            <label for ="zipCode">Zip Code</label>
            <input type="text" class="form-control" id="zipCode" placeholder="####-####" maxlength="10" required>
            <label for ="email">Email</label>
            <input type="email" class="form-control" id="email" placeholder="xxx@xxx.xxx" minlength="7" required>
            <input type="submit" name="Submit" id="submit" />
            <br>

            </form> 
        </div>
    </body>
</html>
