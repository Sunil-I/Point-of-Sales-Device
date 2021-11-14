<%-- 
    Document   : header
    Created on : Jan 4, 2020, 11:19:01 AM
    Author     : cgallen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- The below 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Bootstrap core CSS -->
        <link href="./resources/css/bootstrap.min.css" rel="stylesheet">
        <!-- Custom styles for this template -->
        <link href="./resources/css/navbar.css" rel="stylesheet">
        <title><%=request.getAttribute("selectedPage")%></title>
        <script src="./resources/js/jquery.min.js"></script>
        <script src="./resources/js/bootstrap.min.js"></script>
    </head>
    
    <body>
   <header>
      <nav class="navbar navbar-default">
         <a class="navbar-brand" href="/">Banking App</a>
         <ul class="nav navbar-nav">
            <li <% if ("home".equals(request.getAttribute("selectedPage"))) {%> class="active"  <% } %> ><a href="./home.jsp">Home</a></li>
            <li <% if ("about".equals(request.getAttribute("selectedPage"))) {%>  class="active"  <% } %> ><a href="./about.jsp">About</a></li>
            <li <% if ("contact".equals(request.getAttribute("selectedPage"))) {%>  class="active"  <% }%> ><a href="./contact.jsp">Contact</a></li>
            <li <% if ("properties".equals(request.getAttribute("selectedPage"))) {%>  class="active"  <% }%> ><a href="./properties.jsp">Properties</a></li>
         </ul>
      </nav>
   </header>