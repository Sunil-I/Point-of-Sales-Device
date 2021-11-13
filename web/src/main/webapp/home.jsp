<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
   request.setAttribute("selectedPage","home");
%>

<%@ page import="com.github.b4.bank.model.dto.CreditCard" %>
<%@ page import="com.github.b4.bank.client.impl.BankRestClientImpl" %>
<%@ page import="com.github.b4.bank.model.client.BankRestClient" %>

<%@ page import="com.github.b4.bank.model.dto.BankTransactionStatus" %>
<%@ page import="com.github.b4.bank.model.dto.TransactionReplyMessage" %>

<%@page import="com.github.b4.dao.WebObjectFactory"%>
<%@page import="com.github.b4.dao.PropertiesDao"%>


<%

    PropertiesDao propertiesDao = WebObjectFactory.getPropertiesDao();
    String bankUrl = propertiesDao.getProperty("rest_url");
%>

<%
    // start the clart
    BankRestClient client = new BankRestClientImpl(bankUrl);
    // define things
    TransactionReplyMessage reply = null;
    String action = null;
    CreditCard cardFrom = null;
    CreditCard cardTo = null;
    // get action    
    action = request.getParameter("action");
    // get form details
    String sender_ccnumber = request.getParameter("sender_ccnumber");
    String sender_cvv = request.getParameter("sender_cvv");
    String sender_endDate = request.getParameter("sender_endDate");
    String sender_issueNum = request.getParameter("sender_issueNum");
    String sender_name = request.getParameter("sender_name");
    
    String recipient_ccnumber = request.getParameter("recipient_ccnumber");
    String recipient_cvv = request.getParameter("recipient_cvv");
    String recipient_endDate = request.getParameter("recipient_endDate");
    String recipient_issueNum = request.getParameter("recipient_issueNum");
    String recipient__name = request.getParameter("recipient_name");
    
    if ("transaction".equals(action)) {
        //Card From
        cardFrom = new CreditCard();
        cardFrom.setCardnumber(sender_ccnumber);
        cardFrom.setCvv(sender_cvv);
        cardFrom.setEndDate(sender_endDate);
        cardFrom.setIssueNumber(sender_issueNum); 
        cardFrom.setName(sender_name);
        //Card To
        cardTo = new CreditCard();
        cardTo.setCardnumber(recipient_ccnumber);
        cardTo.setCvv(recipient_cvv);
        cardTo.setEndDate(recipient_endDate);
        cardTo.setIssueNumber(recipient_issueNum);
        cardTo.setName(recipient__name);
        
        //Amount
        double amount = Double.parseDouble(request.getParameter("amount").toString());
        
        reply = client.transferMoney(cardFrom, cardTo, amount);
        
        // client.transferMoney(cardFrom, cardTo, amount);
    }
%>


<jsp:include page="header.jsp" />
<main role="main" class="container">
    <H1>Home page</H1>
    <br>
    <h1> Sender </h1>
   <form class="form-card" method="POST" id="card-form">
      <div class="form-group">
         <table class="table">
            <tbody>
               <tr>
                  <td>Full Name</td>
                  <td><input type="text" size="36" name="sender_name" value="Jeff Bezos" required></td>
               </tr>
               <tr>
                  <td>Credit Card Number</td>
                  <td><input type="text" size="36" name="sender_ccnumber" value="5133880000000012" required></td>
               </tr>
               <tr>
                  <td>Issue Number</td>
                  <td><input type="text" size="36" name="sender_issueNum" value="01" required></td>
               </tr>               
               <tr>
                  <td>Expiry Date</td>
                  <td><input type="text" size="36" name="sender_endDate" value="11/21" required></td>
               </tr>
               <tr>
                  <td>Cvv Code</td>
                  <td><input type="text" size="36" name="sender_cvv" value="123" class="form-group col-md-2" required></td>
               </tr>
               <tr>
                  <td>Amount</td>
                  <td><input type="text" size="36" name="amount" value="3000" class="form-group col-md-2" required></td>
               </tr>
            </tbody>
         </table>
          <h1> Recipient </h1>
             <table class="table">
            <tbody>
               <tr>
                  <td>Full Name</td>
                  <td><input type="text" size="36" name="recipient_name" value="Jerome Kerviel" required></td>
               </tr>
                <tr>
                  <td>Credit Card Number</td>
                  <td><input type="text" size="36" name="recipient_ccnumber" value="4285860000000021" required></td>
               </tr>
                  <td>Issue Number</td>
                  <td><input type="text" size="36" name="recipient_issueNum" value="01" required></td>
               </tr> 
               <tr>
                  <td>Expiry Date</td>
                  <td><input type="text" size="36" name="recipient_endDate" value="11/21" required></td>
               </tr>
               <tr>
                  <td>Cvv Code</td>
                  <td><input type="text" size="36" name="recipient_cvv" value="123" class="form-group col-md-2"></td>
               </tr>
            </tbody>
         </table>
        <input type="hidden" name="action" value="transaction"> 
         <button class="btn ml-2 rounded" type="submit">Send Details</button>
   </div>
   </form>
            <% if (("transaction".equals(action))) {%>
     <p><%=reply%><\p>  
    <% }%>
</main>
<jsp:include page="footer.jsp" />