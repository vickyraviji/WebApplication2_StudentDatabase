<%-- 
    Document   : home
    Created on : 22 May, 2018, 10:16:08 AM
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
    </body>
</html>
