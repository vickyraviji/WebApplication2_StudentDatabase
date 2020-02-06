<%-- 
    Document   : EnqRegisterForm
    Created on : 22 May, 2018, 9:55:18 AM
    Author     : SHREELAKSHMI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <jsp:include flush="true" page="mainMenu.jsp"></jsp:include>
         <br> <br> <br> <br> <br> <br>
         <%
         String course[]={"BSC","MSC","BTech","ME","BE"};
         %>
    <center>
        <form name="f1" action="EnqRegisterFormDB.jsp" method="post">
             
             <table>
                 <tr>
                     <td>Student Name</td>
                     <td><input type="text" name="name" required></td>
                 </tr>
                  <tr>
                     <td>Qualification</td>
                             <td><select name="course">
                                     <option>Select</option>
                                     
                                     <%
                                     for(String c : course)
                                     {
                                         out.println("<option>"+c+"</option>");
                                     }
                                     
                                     %>
                         </select></td>
                 </tr>
                  <tr>
                     <td>Mobile No</td>
                     <td><input type="text" name="mobileno" required></td>
                 </tr>
                  <tr>
                     <td>Email Id</td>
                     <td><input type="email" name="emailid" required></td>
                 </tr>
                  <tr>
                     <td>Father Name</td>
                     <td><input type="text" name="fname" required></td>
                 </tr>
                 
                  <tr>
                     <td>Father Mobile No</td>
                     <td><input type="text" name="mno" required></td>
                 </tr>
                 
                  <tr>
                      <td align="center" colspan="2"><input type="submit" value="Submit"></td>
                  
                 </tr>
             </table>
         </form>
    </center>
    </body>
</html>
