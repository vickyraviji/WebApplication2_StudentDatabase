<%-- 
    Document   : staffRegister
    Created on : 22 May, 2018, 10:19:11 AM
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
        <jsp:include flush="true" page="hodMenu.jsp"></jsp:include>
        
         <%
         String course[]={"BSC","MSC","BTech","ME","BE"};
         %>
          <br> <br> <br> <br> <br> <br>
       
    <center>
        <form name="f1" action="staffRegisterDB.jsp" method="post">
             
             <table>
                 <tr>
                     <td>Staff Name</td>
                     <td><input type="text" name="name" required></td>
                 </tr>
                  <tr>
                     <td>Qualification</td>
                             <td><select name="qualification">
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
                     <td>Salary</td>
                     <td><input type="text" name="salary" required></td>
                 </tr>
                 
                  <tr>
                     <td>Year of Experience</td>
                     <td>
                         
                         <select name="yrOfExp">
                             
                             <option>Select</option>    
                         
                     <%
                     for(int i=0;i<=10;i++)
                     {
                         out.println("<option>" +i+ "</option>");
                     }
                     
                     %>
                     <option>More then 10 Years</option>
                     </select>
                    </td>
                 </tr>
                 
                  <tr>
                      <td align="center" colspan="2"><input type="submit" value="Submit"></td>
                  
                 </tr>
             </table>
         </form>
    </center>
    </body>
</html>
