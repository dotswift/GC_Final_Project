<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Flight | Search Results</title>
</head>
<body>

	<%@include file="partials/header.jsp"%>
	<h2>Flight Search Results</h2>

	<p>Origin: ${ origlocation }</p>
	<c:forEach var="flightstatus" items="${flightstatus}">
		<div>
			<h3>${flightstatus.flightId}-
				${flightstatus.carrierFsCode}-${flightstatus.flightNumber}</h3>

			Expected Arrival:
			${flightstatus.operationalTimes.publishedArrival.dateLocal}<br>
			Actual Arrival:
			${flightstatus.operationalTimes.estimatedGateArrival.dateLocal}<br>

			Arrival Terminal: ${flightstatus.airportResources.arrivalTerminal}<br>
			Arrival Gate: ${flightstatus.airportResources.arrivalGate}<br>
			
			GA formatted ${gatearrival }


		</div>

	</c:forEach>

	<div>Duration in traffic: ${ traffic } seconds</div>
	


	<p>Based on current traffic conditions, you should leave for the
		airport at ${ grounddepttime } . You will arrive at ${ timeAtDoor }</p>

</body>
</html>