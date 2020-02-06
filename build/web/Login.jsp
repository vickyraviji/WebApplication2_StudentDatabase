<%-- 
    Document   : Login
    Created on : 22 May, 2018, 9:55:31 AM
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
    <center>
        <form name="f1" action="checkUser.jsp" method="post">
          <table>
              <tr>
                  <td>Enter UserId</td>
                  <td><input type="text" name="userid" required></td>
              </tr>
               <tr>
                  <td>Enter Mobile No</td>
                  <td><input type="text" name="userpass" required></td>
              </tr>
               <tr>
                  <td>Select Roles</td>
                  <td><input type="radio" name="rb" value="Staff"> Staff | <input type="radio" name="rb" value="HOD"> HOD |<input type="radio" name="rb" value="Student"> Student  </td>
              </tr>
               <tr>
                   <td colspan="2" align="center"><input type="submit" value="Login"></td>
                 
              </tr>
          </table>
      </form>
    </center>
    </body>
</html>
