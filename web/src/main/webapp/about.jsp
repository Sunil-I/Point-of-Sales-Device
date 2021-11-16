<%-- 
   Document   : content
   Created on : Jan 4, 2020, 11:19:47 AM
   Author     : cgallen
   --%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
   request.setAttribute("selectedPage","about");
   %>
<jsp:include page="header.jsp" />
<!-- Begin page content -->
<main class="container">
   <H1>Introduction</H1>
   <p>We were asked to create a web based point of sale application which would let users to be able to the following actions: </p>
   <ul>
       <li>enter a new transaction</li>
    <li>reverse a transaction (refund to card)</li>
    <li>check credit card Lunn code</li>
    <li>allow entry of card number, name, expiry date, cvv code (card pin verification
        is not required)</li>
   </ul>
   <h1>Contributors </h1>
   <ul>   
       <a href="https://github.com/Sunil-I"><li>Sunil Islam</li></a>
       <a href="https://github.com/KayleighPerera"><li>Kayleigh Perera</li></a>
       <a href="https://github.com/eltonczlon123"><li>Kacper Stepniewski</li></a>
       <a href="https://github.com/liamnicola"><li>Liam Nicola</li></a>
    </ul>
   <h1>Warning</h1>
   <p>The application is completely open with no logins or login security. DO NOT attempt to use any real credit card data with this application.</p>
</main>
<jsp:include page="footer.jsp" />