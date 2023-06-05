<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="logout.jsp"%>
<!DOCTYPE html>
<html>
<head>

<style type="text/css">

body {
    font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    margin: 0;
    padding: 20px;
    background-color: #fff;
    color: #331c58;
}

h1 {
    color: #06287fa7;
    text-align: center;
}

a {
    color: #331c58;
    text-decoration: none;
}

.table-container {
    overflow-x: auto;
}

table {
    border-collapse: collapse;
    width: 100%;
    max-width: 100%;
}

th,
td {
    padding: 8px;
    text-align: left;
    /* border-bottom: 1px solid #ddd; */
    border: 1px dashed #198004;
}

th {
    background-color: #f2f2f2;
}

@media only screen and (max-width: 600px) {
    table {
        display: block;
        overflow-x: auto;
        white-space: nowrap;
    }

    thead,
    tbody,
    th,
    td,
    tr {
        display: block;
        text-align: center;
    }

    th {
        text-align: center;
    }

    th::after {
        content: none;
        display: table;
        clear: both;
    }

    td {
        text-align: right;
        border-bottom: none;
    }

    td::before {
        content: attr(data-label);
        float: left;
        font-weight: bold;
        text-transform: uppercase;
    }

    tbody tr {
        margin-bottom: 15px;
    }
}

</style>

<meta charset="ISO-8859-1">
<title>Display Flights</title>
</head>
<body>
	<h1>Flight Search Results</h1>

<table border="1">
<tr>
	<tr>
	<th>Airlines</th>
	<th>Departure City</th>
	<th>Arrival City</th>
	<th>Departure Time</th>
	<th>Select Flight</th>
</tr>
<c:forEach items="${flights}" var="findFlights">
	
		<tr>
			<td>${findFlights.operatingAirlines}</td>
			<td>${findFlights.departureCity}</td>
			<td>${findFlights.arrivalCity}</td>
			<td>${findFlights.estimatedDepartureTime}</td>
			<td><a href="showCompleteReservation?flightId=${findFlights.getId()}">Select</a>
		</tr>

</c:forEach>
</table>
</body>
</html>