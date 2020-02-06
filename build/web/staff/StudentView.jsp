<%-- 
    Document   : StudentView
    Created on : 24 May, 2018, 8:49:48 AM
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
    <jsp:include page="staffMenu.jsp" flush="true"></jsp:include>
     <%
        String  eid=session.getAttribute("emailidURL").toString();
        out.println("<table align=right><tr><td>Welcome ! "+eid+"</td></tr></table> ");
        %>
        
        <br><br><br><br>
    <center>
        <form name="f1" action="ViewDetails.jsp" method="post">
            <table>
                <tr>
                    <td>Select Option</td>
                    <td>
                          <select name="options">
            <option>Select</option>
          
            <option>Pending</option>
              <option>Updated</option>
              
        </select>
                        
                    </td>
                </tr>
                
                <tr>
                    <td align="center" colspan="2"><input type="submit" value="Select"></td>
                </tr>
            </table>
        </form>
    </center>
    </body>
</html>
