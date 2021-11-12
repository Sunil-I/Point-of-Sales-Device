<%-- 
    Document   : content
    Created on : Jan 4, 2020, 11:19:47 AM
    Author     : cgallen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    request.setAttribute("selectedPage","home");
%>
<jsp:include page="header.jsp" />
<!-- Begin page content -->
<main role="main" class="container">
    <H1>Home page</H1>
    <body>

  <div class="calc-body">  
    <div class="calc-screen">   
      <div class="calc-typed"> 35 <span class="blink-me"> _ </span> </div>  
    </div>  
    <div class="calc-button-row">  
      <div class="button"> 1 </div>  
      <div class="button"> 2 </div>  
      <div class="button"> 3 </div>   
    </div>  
    <div class="calc-button-row">  
      <div class="button"> 4 </div>  
      <div class="button"> 5 </div>  
      <div class="button"> 6 </div>  
    </div>  
    <div class="calc-button-row">  
      <div class="button"> 7 </div>  
      <div class="button"> 8 </div>  
      <div class="button"> 9 </div>  
    </div>  
    <div class="calc-button-row">  
      <div class="button"> F </div>  
      <div class="button"> 0 </div>  
      <div class="button"> . </div> 
    </div>
     <div class="calc-button-row">  
      <div class="button"> RED </div>  
      <div class="button"> YELLOW </div>  
      <div class="button"> GREEN </div>   
    </div>  
</body>  
    
    
    
    
 
</main>




<jsp:include page="footer.jsp" />
