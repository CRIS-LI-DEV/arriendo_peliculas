<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>



<div class="container">
<div class="row">


<div class="panel panel-primary" id="b">
   
    <div class="panel-heading" id="a">
<c:out value="${id_user}"></c:out>
<h1> <c:out value="${user.getName() }"></c:out>
</h1>
</div>
    <div class="panel-body">



<form action="/orden" method="post">
<input type="hidden" name="orden" value="a">
<input type="submit" value="Asc">
</form>

<form action="/orden" method="post">
<input type="hidden" name="orden" value="d">
<input type="submit" value="desc">
</form>


<table border="1" class="table">
<thead>

<tr> 

<th> Sector </th> 

<th> Instructor </th> 

<th> Singups </th> 


<th> Accions </th> 
 
 
</tr>

</thead>


<tbody>

<c:forEach items="${ideas}" var="i">
<tr>
<td>
<a href="/ideas/">${i.getContent()}<br>
</a>
</td>

<td>
${i.getUser().getName()}
<br>
</td>




 
<td>

${i.getLikes().size()}

   
</td>
<td> 
			<c:set var="flag" value="${0}" />

	<c:forEach items="${i.getLikes()}" var ="l">
  
  					<c:choose>
  						
  						<c:when test="${l.getUser().getId() == usuarioId}">
    					
 		   					<c:set var="flag" value="${1}" />
  
  						</c:when>
  
  		 			
  
  
  					</c:choose>
  
  				  </c:forEach>


<c:choose>
 
<c:when test="${contador==0}"> 
 				
 				
 				
<form action="/likes" method="post">
<input type="hidden" name="id_idea" value="${i.getId()}">

<input type="hidden" name="id_user" value="${id_user}">
<input type="submit" value="like">
</form>
 				
</c:when>

<c:otherwise>

no like
</c:otherwise>

</c:choose>




</td>

</tr>
</c:forEach>


</tbody>
</table>

<a href="/courses/new"> Add Course</a>


</div>
</div>
</div>
</div> 


</body>
</html>