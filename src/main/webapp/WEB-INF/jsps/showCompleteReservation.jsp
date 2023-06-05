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
            font-family: Georgia, 'Times New Roman', Times, serif;
            margin: 0;
            padding: 20px;
        }

        h2 {
            text-align: center;
            color: #06287fa7;
        }

        form {
            max-width: 600px;
            margin: 0 auto;
        }

        input[type="text"],
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        input[type="submit"] {
            background-color: #331c58;
            color: white;
            cursor: pointer;
        }

        @media (min-width: 800px) {
            form {
                max-width: 800px;
            }
        }
    </style>

<meta charset="ISO-8859-1">
<title>Reservation</title>
</head>
<body>
	<h2>Flight Details</h2>
	Flight Number: ${flights.flightNumber} <br/>
	Operating Airlines: ${flights.operatingAirlines} <br/>
	Departure City: ${flights.departureCity} <br/>
	Arrival City: ${flights.arrivalCity} <br/>
	Date Of Departure: ${flights.dateOfDeparture} <br/>
	Estimated DepartureTime: ${flights.estimatedDepartureTime} <br/>
	
	<h2>Passenger Details</h2>
	<form action="confirmRegistration" method="post">
	<pre>
		First Name<input type="text" name="firstName"/>
		last Name<input type="text" name="lastName"/>
		Middle Name<input type="text" name="middleName"/>
		Email<input type="text" name="email"/>
		Phone<input type="text" name="phone"/>
		<input type="hidden" name="id" value="${flights.id}"/>
	<h2>Enter the card details</h2>
		Card Number<input type="text" /><br/>
		CVV<input type="text"/><br/>
		Expiry Date<input type="text" /><br/>
		Amount<input type="text"/><br/>
		<input type="Submit" value="proceed"/>
	</pre>
	</form>
</body>
</html>