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
    <form class="form-card" method="POST" id="card-form">
    <div class="form-group">
        <table class="table">
            <tbody><tr>
                <td>Credit Card Number</td>
                <td><input type="text" size="36" name="ccnumber" value="" required=true></td>
            </tr>
            <tr>
                <td>Full Name</td>
                <td><input type="text" size="36" name="name" value="" required=true></td>
            </tr>
            <tr>
                <td>Expiry Date</td>
                <td><input type="text" size="36" name="expirydate" value="" required=true></td>
            </tr>
            <tr>
                <td>Cvv Code</td>
                <td><input type="text" size="36" name="cvv" value="" class="form-group col-md-2"lmao></td>
            </tr>
        </tbody></table>
        <button class="btn ml-2 rounded" type="submit">Save Details</button>
    </form>
    </div>
</main>




<jsp:include page="footer.jsp" />
