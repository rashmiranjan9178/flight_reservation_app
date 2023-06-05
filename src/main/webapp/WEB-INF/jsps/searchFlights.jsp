<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="logout.jsp"%>
    
<!DOCTYPE html>
<html>
<head>

<style>
        * {
            box-sizing: border-box;
        }

        body {
            font-family: monospace;
            margin: 0;
            padding: 20px;
            font-size: large;
        }

        h1 {
            text-align: center;
            color: #3b1d6b;
        }

        form {
            max-width: 300px;
            margin: 0 auto;
        }

        input[type="text"],
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 2px solid #c7c4c4;
            border-radius: 7px;
        }

        input[type="submit"] {
            background-color: #0a43989c;
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
<title>Search Flights</title>
</head>
<body>
	<h2>Find Flights</h2>
	<form action="findFlights" method="post">
		from:<input type="text" name="from"/>
		to:<input type="text" name="to"/>
		departure date:<input type="text" name="departureDate"/>
		<input type="Submit" value="search"/>
	
	</form>
</body>
</html>