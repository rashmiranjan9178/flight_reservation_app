<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<style>
        * {
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
        }

        h1{
            text-align: center;
            color: #331c58;
        }
        form {
            max-width: 400px;
            margin: 10px auto;
        }

        input[type="text"],
        input[type="password"],
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            display:grid;
            border: 2px solid #ccc;
            border-radius: 6px;
        }

        input[type="submit"] {
            background-color: #06287fa7;
            color: white;
            cursor: pointer;
            justify-content: center;
        }

        @media (min-width: 600px) {
            form {
                max-width: 350px;
                /* /* justify-content: center; */
                text-align: center;
            }
            
        }
    </style>

<meta charset="ISO-8859-1">
<title>New Registration</title>
</head>
<body>
	<h2>Register Here</h2>
	<form action="saveReg" method = "post">
	<pre>
		first name<input type="text" name="firstName"/>
		last name<input type="text" name="lastName"/>
		email<input type="text" name="email"/>
		password<input type="text" name="password"/>
		<input type="submit" value="save"/>
	</pre>
	</form>
</body>
</html>