<%@page import="com.github.b4.dao.WebObjectFactory"%>
<%@page import="com.github.b4.dao.PropertiesDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

    PropertiesDao propertiesDao = WebObjectFactory.getPropertiesDao();
    String url = propertiesDao.getProperty("com.github.b4.url");
%>
<%
    request.setAttribute("selectedPage","home");
%>
<jsp:include page="header.jsp" />
<!-- Begin page content -->
<main role="main" class="container">
    <H1>Info page</H1>
    <p>Bank URL: <input type="text" name="url" value="<%=url%>"></p>
</main>


<jsp:include page="footer.jsp" />