<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Registration Page</title>
</head>

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<body>

<div class="container">
<div class="row">

<div class="col-md-4">


</div>
<div class="col-md-4">
<div class="panel panel-primary">
   
    <div class="panel-heading">    <h1>Edit!</h1></div>
    <div class="panel-body">
   
 



 
    
    <p><form:errors path="user.*"/></p>
    
    <form:form method="POST" action="/courses" modelAttribute="course">
        <form:hidden path="id" value="${course.getId()}" />
        <p>
            <form:label path="name">Name:</form:label>
            <form:input path="name" class="form-control" placeholder="${course.getName()}" />
        </p>
       
         
        
            <p>
            <form:label path="instructor">Instructor:</form:label>
            <form:input path="instructor" class="form-control" placeholder="${course.getInstructor()}" />
        </p>
        
        
        
        
        <p>
            <form:label path="capacity">Capacity:</form:label>
            <form:input path="capacity" class="form-control" placeholder="${course.getCapacity()}"/>
        </p>
          <input type="submit" value="Update!"/>
    </form:form>
    
    
    </div>
    </div>
    </div>
    
    <div class="col-md-2"> </div>
</div>
</div>

</body>
</html>