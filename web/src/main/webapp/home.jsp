<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
   request.setAttribute("selectedPage","home");
   %>
<jsp:include page="header.jsp" />
<main role="main" class="container">
<<<<<<< HEAD
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
    
    
    
    
 
=======
   <H1>Home page</H1>
   <form class="form-card" method="POST" id="card-form">
      <div class="form-group">
         <table class="table">
            <tbody>
               <tr>
                  <td>Credit Card Number</td>
                  <td><input type="text" size="36" name="ccnumber" value="" required></td>
               </tr>
               <tr>
                  <td>Full Name</td>
                  <td><input type="text" size="36" name="name" value="" required></td>
               </tr>
               <tr>
                  <td>Expiry Date</td>
                  <td><input type="text" size="36" name="expirydate" value="" required></td>
               </tr>
               <tr>
                  <td>Cvv Code</td>
                  <td><input type="text" size="36" name="cvv" value="" class="form-group col-md-2"></td>
               </tr>
            </tbody>
         </table>
         <button class="btn ml-2 rounded" type="submit">Save Details</button>
   </form>
   </div>
>>>>>>> b1e1d3181d28b7435e11b8433137d1ed8085fcc3
</main>
<jsp:include page="footer.jsp" />