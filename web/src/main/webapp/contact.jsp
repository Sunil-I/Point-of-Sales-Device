<%-- 
    Document   : content
    Created on : Jan 4, 2020, 11:19:47 AM
    Author     : cgallen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    request.setAttribute("selectedPage","contact");
%>
<jsp:include page="header.jsp" />
<!-- Begin page content -->
<main role="main" class="container">
    <H1>Contact Form</H1>
 
    <div id=form>
    <form>
        <br>
        <label> First Name </label>
        <input type="text" id="fname" name="firstname"/>
        <br>
        <br>
        <label> Email </label>
        <input type="text" id="email" name="email"/>
        <br>
        <br>
        <label> Message </label>
        <input type="text" id="message" name="message"/>
        <br>
        <br>
        <input type="submit" value="Submit">
    </form>
    </div>
</main>


<jsp:include page="footer.jsp" />
