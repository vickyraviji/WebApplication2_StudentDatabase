<%-- 
    Document   : UpdateMarkDB
    Created on : 25 May, 2018, 8:51:37 AM
    Author     : SHREELAKSHMI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
 
        
        <%
        
            int sid=Integer.parseInt(request.getParameter("sid").toString());
            
            String mark=request.getParameter("mark").toString();
            String status="Updated";
                    
         try
                            {
                                   Class.forName("com.mysql.jdbc.Driver");
         Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/JDBCFita","root","vicky");
         Statement st1=con1.createStatement();
         st1.execute("update   studentregister set mark='"+mark+"' , status='"+status+"' where sid= '"+sid+"' ");
         out.println("<center><b>Mark Updated Successfully</b></center>");
         RequestDispatcher reqDis=request.getRequestDispatcher("UpdateMark.jsp");
         reqDis.include(request, response);
         
                            }
         catch(Exception e)
         {
             out.println(e);
         }
        %>
    </body>
</html>
