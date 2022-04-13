<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link
	href='https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css'
	rel='stylesheet'>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<title>eLibrary</title>

<script type="text/javascript">
	function clearSearch() {
		window.location = "/";
	}
	function recentlyAdded() {
		window.location = "/fltr";
	}
</script>

<style>
table th {
	text-align: center;
}

table td {
	text-align: center;
}

#t {
	background-color: #1A2226;
}

body {
	background-color: lightblue;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f1f1f1;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}

.dropdown-content a:hover {background-color: #ddd;}

.dropdown:hover .dropdown-content {display: block;}

.dropdown:hover .dropbtn {background-color: #3e8e41;}

</style>
</head>

<header>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
		<a class="navbar-brand" href="#">eLibrary</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav ml-auto text-uppercase">
				<li class="nav-item"><a class="nav-link" href="#">Home </a></li>
				<li class="nav-item"><a class="nav-link" href="#">About</a></li>
				<div class="dropdown" >
				<li class="nav-item"><a class="nav-link" href="#" >Menu <em class="fa fa-caret-down"></em></a>
				  <div class="dropdown-content">
   					 <a href="#">View Books</a>
    				 <a href="#">Add Books</a>
   					 <a href="#">Verify Register</a>
  				  </div>				
				</li>
				</div>
				<li class="nav-item"><a class="nav-link" href="#">Sign Out</a></li>
			</ul>
		</div>
	</nav>
</header>

<body>
	<br />
	<div class="container-fluid">
		<br />
		<br />
		<form class="form-inline" action="/">
			<div class="form-group">
				<label>Filter: </label> <input type="text" name="keyword"
					id="keyword" size="50" value="${keyword}" required
					class="form-control" placeholder="Enter your choice here..." />
			</div>
			&nbsp; <input type="submit" value="Search" class="btn btn-success" />
			&nbsp; <input type="button" value="Clear" id="btnClear"
				onclick="clearSearch()" class="btn btn-danger" />
			&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; <input type="button" value="Recently Added" id="fltr"
				onclick="recentlyAdded()" class="btn btn-primary" />
		</form>

		<div class="text-center">
			<c:if test="${empty listBooks}">
				<br />
				<h1>No Book Found...!!!</h1>
			</c:if>
		</div>
		<br />

		<div>
			<table class="table" id="t">
				<caption></caption>

				<tr style="color: white; background-color: black;">
					<th id="book">Book</th>
					<th id="author">Author</th>
					<th id="genre">Genre</th>
					<th id="publisher">Publisher</th>
					<th id="category">Category</th>
					<th id="language">Language</th>
					<th id="location">Location</th>
					<th id="date">BookEntryDate</th>
				</tr>

				<c:forEach items="${listBooks}" var="books">
					<tr style="color: white;">
						<td>${books.book }</td>
						<td>${books.author }</td>
						<td>${books.genre }</td>
						<td>${books.publisher }</td>
						<td>${books.category }</td>
						<td>${books.language }</td>
						<td>${books.location }</td>
						<td>${books.date }</td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>
	<br />
	<br />
</body>

<footer class="bg-dark text-center text-lg-start fixed-bottom">
	<div class="text-center p-3 text-light">© 2020 Copyright:
		eLibrary.com</div>
</footer>
</html>