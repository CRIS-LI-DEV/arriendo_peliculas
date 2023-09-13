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

<link rel="stylesheet" href="../estilo.css">


</head>
<body>

<div class="container">
<div class="row">

<div class="col-md-2"></div>
<div class="col-md-8">
<div class="panel panel-primary" id="b">
   
    <div class="panel-heading" id="a">

</div>
    <div class="panel-body">
 <h1><c:out value="${course.getName()}"></c:out></h1>
  Instructor : <c:out value="${course.getInstructor()}"></c:out><br>
  SignUps : <c:out value="${course.getInscriptions().size()}"></c:out>








<table border="1" class="table">
<thead>

<tr> 

<th> Sector </th> 

<th> Instructor </th> 




<th> Accions </th> 
 
 
</tr>

</thead>


<tbody>

<c:forEach items="${course.getInscriptions()}" var="c">
<tr>
<td>
${c.getUser().getName()}<br>
</td>

<td>
${c.getCreatedAt()}<br>

</td>


<td> 


<form action="/user/delete" method="post">
<input type="hidden" name="id_course" value="${c.getUser().getId()}">
<input type="submit" value="Remove">
</form>

</td>

</tr>
</c:forEach>


</tbody>
</table>

   
    <a href="/courses/<c:out value="${course.getId()}"></c:out>/edit"> Edit Course</a>

<form action="/courses/delete" method="post">
<input type="hidden" name="id_course" value="<c:out value="${course.getId()}"></c:out>">
<input type="submit" value="Delete Course">
</form>


    </div>
    </div>
    </div>
    
 
    <div class="col-md-2"> </div>
</div>
</div>



</body>
</html>