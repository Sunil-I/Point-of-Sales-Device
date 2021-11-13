<%@page import="com.github.b4.dao.WebObjectFactory"%>
<%@page import="com.github.b4.dao.PropertiesDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

    PropertiesDao propertiesDao = WebObjectFactory.getPropertiesDao();
    String rest_url = propertiesDao.getProperty("rest_url");
    String action = request.getParameter("action");
%>
<%
    request.setAttribute("selectedPage","home");
%>
<% 
    if ("update".equals(action)) {
    String api_url = request.getParameter("rest_url");
    propertiesDao.setProperty("rest_url", api_url);
    rest_url = api_url;
    }
%>
<jsp:include page="header.jsp" />
<!-- Begin page content -->
<main role="main" class="container">
    <H1>Info page</H1>
   <form class="form-card" method="POST" id="card-form">
      <div class="form-group">
         <table class="table">
            <tbody>
               <tr>
                  <td>Bank API endpoint</td>
                  <td><input type="text" size="36" name="rest_url" value="<%=rest_url%>"></td>
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