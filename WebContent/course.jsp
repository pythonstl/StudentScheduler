<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!-- Imports JSTL library: -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Courses</title>
	
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

	<!-- Optional theme -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
	
	<!-- ********************************* -->
  	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
 	 <link rel="stylesheet" href="/resources/demos/style.css">
  	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
 	 <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
 	 <script>
  		$( function() {
    		$( "#datepicker" ).datepicker();
 		 } );
  	</script>
	<!-- ********************************* -->
	
	<style type="text/css">
		.weekdays-selector input {
			display: none!important;
		}
		.weekdays-selector input[type=checkbox] + label {
			display: inline-block;
			border-radius: 6px;
			backgroun: #dddddd;
			height: 40px;
			width: 30px;
			margin-right: 3px;
			line-height: 40px;
			text-align: center;
			cursor: pointer;
		}
		.weekdays-selector input[type=checkbox]:checked + label {
			background: #2AD705;
			color: #ffffff;
		}
	</style>
</head>
<body>
	<!-- navbar --> 
	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
					<span class="sr-only">Toggle navigation.</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">Course Schedule</a>
			</div>
			<div id="navbar" class="collapse navbar-collapse">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#">Home</a></li>
					<li><a href="account.jsp">Account</a></li>
				</ul>
			</div>
		</div>
	</nav> 
	<!-- /navbar -->
	
	<div class="container">
		<div style="margin-top: 100px"></div>
		<div style="width: 300px">
			<h3>Student Schedule Builder</h3>
			<br>
			<form action="SchedulerServlet" method="post">
				<label for="courseName">Course</label>
				<select name="courseName" class="form-control">
					<option value="C#">C#</option>
					<option value="C++">C++</option>
					<option value="C">C</option>
					<option value="Ruby on Rails">Ruby on Rails</option>
					<option value="PHP">PHP</option>
					<option value="SQL">SQL</option>
					<option value="JavaScript">JavaScript</option>
				</select>
				<br>
				
				<label for="professor">Professor</label>
				<select name="professor" class="form-control">
					<option value="John White">John White</option>
					<option value="Michael Brown">Michael Brown</option>
					<option value="Tina Doe">Tina Doe</option>
					<option value="Emily Winter">Emily Winter</option>
					<option value="Christine Summer">Christine Summer</option>
				</select>
				<br>
				
				<label for="time">Time</label>
				<select name="time" class="form-control">
					<option value="09:00 a.m.">09:00 a.m.</option>
					<option value="11:00 a.m.">11:00 a.m.</option>
					<option value="01:00 p.m.">01:00 p.m.</option>
					<option value="03:00 p.m.">03:00 p.m.</option>
					<option value="05:00 p.m.">05:00 p.m.</option>
				</select>
				<br>
								
				<label for="roomNumber">Room Number</label>
				<select name="roomNumber" class="form-control">
					<option value="101-A">101-A</option>
					<option value="101-B">101-B</option>
					<option value="201-A">201-A</option>
					<option value="201-B">201-B</option>
					<option value="303">303</option>
				</select>
				<br>
				
				<label for="startDate">Start Date</label>
				<input name="startDate" type="text" id="datepicker"class="form-control">
				<br>				
				
				<label for="weekday">Weekdays</label>
				<div class="weekdays-selector">
					<input type="checkbox" name="weekday" value="MONDAY" id="weekday-mon" class="weekday" />
					<label for="weekday-mon">M</label>
					<input type="checkbox" name="weekday" value="TUESDAY" id="weekday-tues" class="weekday" />
					<label for="weekday-tues">T</label>
					<input type="checkbox" name="weekday" value="WEDNESDAY" id="weekday-wednes" class="weekday" />
					<label for="weekday-wednes">W</label>
					<input type="checkbox" name="weekday" value="THURSDAY" id="weekday-thurs" class="weekday" />
					<label for="weekday-thurs">R</label>
					<input type="checkbox" name="weekday" value="FRIDAY" id="weekday-fri" class="weekday" />
					<label for="weekday-fri">F</label>
				</div>
				<br>
				
				<button type="submit" class="btn btn-primary">Add To Schedule</button>
				<br>
			</form>
		</div> 
		
		<c:if test="${courses != null }"> <!-- ******* -->
		<br>
		<h3>My Schedule:</h3>
		<table class="table table-striped">
  			<thead>
 			   	<tr>
      				<th scope="col">Course Name</th>
      				<th scope="col">Professor</th>
      				<th scope="col">Time</th>
      				<th scope="col">Room Number</th>
      				<th scope="col">Start Date</th>
      				<th scope="col">Weekdays</th>
    			</tr>
 			 </thead>
  			<tbody>
  				<c:forEach var="course" items="${courses}"> <!-- ^^^^^^^ -->
    			<tr>
      				<td><c:out value="${course.courseName}"/></td>
      				<td><c:out value="${course.professor }"/></td>
      				<td><c:out value="${course.time}"/></td>
      				<td><c:out value="${course.roomNumber}"/></td>
      				<td><c:out value="${course.startDate}"/></td>
      				<td>
      					<c:forEach var="occurrence" items="${course.occurrences}">
      						<c:out value="${occurrence}"/>
      					</c:forEach>
      				</td>
    			</tr>
    			</c:forEach> <!-- ^^^^^^^ -->
  			</tbody>
		</table>
		</c:if> <!-- ******* -->
		
	</div> <!-- /container -->
</body>
</html>