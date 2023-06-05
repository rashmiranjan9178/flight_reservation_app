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
            font-family:system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
            margin: 0;
            padding: 20px;
        }

        h1 {
            text-align: center;
            color: #331c58;
        }

        form {
            max-width: 400px;
            margin: 0 auto;
        }

        input[type="text"],
        input[type="password"],
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        input[type="submit"] {
            background-color: #06287fa7;
            color: white;
            cursor: pointer;
        }

        @media (min-width: 600px) {
            form {
                max-width: 600px;
            }
        }
    </style>


<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>
	<h2>Login Here</h2>
	${error}
	<form action="verifyLogin" method="post">
		email<input type="text" name="email"/>
		password<input type="password" name="password"/>
		<input type="submit" value="login"/>
	</form>
	${Logout}
</body>
</html>