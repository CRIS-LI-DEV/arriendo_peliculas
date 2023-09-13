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
   
    <div class="panel-heading">     <h1>Create a new course!</h1></div>
    <div class="panel-body">
   


    
    <p><form:errors path="idea.*"/></p>
    
    <form:form method="POST" action="/ideas" modelAttribute="idea">
         <form:hidden path="id_user" value="${id_user}" />
        <p>
            <form:label path="content">Content:</form:label>
            <form:input path="content" class="form-control" />
        </p>
       
               <input type="submit" value="create!"/>
    </form:form>
    
    
    </div>
    </div>
    </div>
    
    <div class="col-md-2"> </div>
</div>
</div>

</body>
</html>