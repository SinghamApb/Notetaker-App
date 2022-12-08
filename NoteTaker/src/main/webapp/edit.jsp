<%@page import="com.entites.Notes"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

       <%@include file="all_js_css.jsp" %>
<title>Edit</title>
</head>
<body>
 <div class="container">
    <%@include file="navbar.jsp" %>
      <br>
   <h1> This is Edit page</h1>

 <%
 int noteID= Integer.parseInt(request.getParameter("note_id").trim());
 
 Session s= FactoryProvider.getFactory().openSession();
 
 Notes note=(Notes)s.get(Notes.class, noteID);
 
 
 %>

	<form action="UpdateServlet" method="post">
	
	<input value="<%= note.getId()%>" name="noteId" type="hidden" />
	  <div class="form-group">
	    <label for="title" class="form-label">Note Title</label>
	    <input 
	    name="title"
	    type="text" 
	    class="form-control" id="title" aria-describedby="emailHelp"
	    placeholder="Enter the title"
	    value="<%=note.getTitle() %>"
	    
	    />  
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
	   ><%=note.getContent() %>"</textarea>
	  </div>
	
	 <div class="container text-centre">
	   <button type="submit" class="btn btn-sucess">Save</button>
	 </div>
	
	</form>

 
 </div>
 


</body>
</html>