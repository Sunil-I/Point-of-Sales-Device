<%@page import="com.github.b4.dao.WebObjectFactory"%>
<%@page import="com.github.b4.dao.PropertiesDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
   PropertiesDao propertiesDao = WebObjectFactory.getPropertiesDao();
   String rest_url = propertiesDao.getProperty("rest_url");
   String recipient_name = propertiesDao.getProperty("recipient_name");
   String recipient_ccnumber = propertiesDao.getProperty("recipient_ccnumber");
   String recipient_issueNum = propertiesDao.getProperty("recipient_issueNum");
   String recipient_endDate = propertiesDao.getProperty("recipient_endDate");
   String recipient_cvv = propertiesDao.getProperty("recipient_cvv");
   String action = request.getParameter("action");
  %>
<%
   request.setAttribute("selectedPage","properties");
   %>
<% 
   if ("update".equals(action)) {
   // update bank api url
   propertiesDao.setProperty("rest_url", request.getParameter("rest_url"));
   rest_url = request.getParameter("rest_url");
   // update Recipient details
   // recipient_name
   propertiesDao.setProperty("recipient_name", request.getParameter("recipient_name"));
   recipient_name = request.getParameter("recipient_name");
   // recipient_ccnumber
   propertiesDao.setProperty("recipient_ccnumber", request.getParameter("recipient_ccnumber"));
   rest_url = request.getParameter("recipient_ccnumber");
   //recipient_issueNum
   propertiesDao.setProperty("recipient_issueNum", request.getParameter("recipient_issueNum"));
   rest_url = request.getParameter("recipient_issueNum");
   // recipient_endDate
   propertiesDao.setProperty("recipient_endDate", request.getParameter("recipient_endDate"));
   rest_url = request.getParameter("recipient_endDate");
   // 
   propertiesDao.setProperty("recipient_cvv", request.getParameter("recipient_cvv"));
   rest_url = request.getParameter("recipient_cvv");   
   
   }
   %>
<jsp:include page="header.jsp" />
<!-- Begin page content -->
<main role="main" class="container">
   <form class="form-card" method="POST" id="card-form">
      <div class="form-group">
         <table class="table">
            <tbody>
               <h1>Admin properties</h1>
               <tr>
                  <td>Bank API endpoint</td>
                  <td><input type="text" size="36" name="rest_url" value="<%=rest_url%>"></td>
               </tr>
            </tbody>
         </table>
         <h1>Recipient Details</h1>
         <table class="table">
            <tbody>
               <tr>
                  <td>Full Name</td>
                  <td><input type="text" size="36" name="recipient_name" value="<%=recipient_name%>" required></td>
               </tr>
               <tr>
                  <td>Credit Card Number</td>
                  <td><input type="text" size="36" name="recipient_ccnumber" value="<%=recipient_ccnumber%>" required></td>
               </tr>
               <td>Issue Number</td>
               <td><input type="text" size="36" name="recipient_issueNum" value="<%=recipient_issueNum%>" required></td>
               </tr> 
               <tr>
                  <td>Expiry Date</td>
                  <td><input type="text" size="36" name="recipient_endDate" value="<%=recipient_endDate%>" required></td>
               </tr>
               <tr>
                  <td>Cvv Code</td>
                  <td><input type="text" size="36" name="recipient_cvv" value="<%=recipient_cvv%>" class="form-group col-md-2"></td>
               </tr>
            </tbody>
         </table>
         <input type="hidden" name="action" value="update"> 
         <button class="btn ml-2 rounded" type="submit">Update Details</button>
      </div>
   </form>
   <% if (("update".equals(action))) {%>
   <p>Updated Properties</p>
   <% }%>
</main>
<jsp:include page="footer.jsp" />