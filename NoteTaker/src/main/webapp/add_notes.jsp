<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Notes</title>
  <%@include file="all_js_css.jsp" %>
</head>
<body>
<div class="container ">
    <%@include file="navbar.jsp" %>
    <br>
   <h1> This is add notes page</h1>
   
    
    
    <h1>Please fill your notes</h1>
   
  
		    <!--This is add form  -->
		<form action="SaveNoteServlet" method="post">
		  <div class="form-group">
		    <label for="title" class="form-label">Note Title</label>
		    <input 
		    name="title"
		    type="text" 
		    class="form-control" id="title" aria-describedby="emailHelp"
		    placeholder="Enter the title">  
		  </div>
		  
		  
		  <div class="form-group">
		    <label for="content" >Notes </label>
		   <textarea 
		   name="content";
		   id="content"
		   placeholder="Enter the Content"
		   class="form-control"
		   style="height:300px;"
		   required
		   ></textarea>
		  </div>
		
		 <div class="container text-centre">
		   <button type="submit" class="btn btn-primary">Add</button>
		 </div>
		
		</form>

</div>

</body>
</html>