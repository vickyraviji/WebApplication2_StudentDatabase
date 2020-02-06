<%-- 
    Document   : studentRegisterDB
    Created on : 23 May, 2018, 9:57:51 AM
    Author     : SHREELAKSHMI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page  import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%
     
     String sname=request.getParameter("name").toString();
     String course=request.getParameter("course").toString();
     String mobileno=request.getParameter("mobileno").toString();
     String emailid=request.getParameter("emailid").toString();
   
   
     
    try
     {
         Class.forName("com.mysql.jdbc.Driver");
         Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/JDBCFita","root","vicky");
         Statement st=con.createStatement();
         st.execute("insert into studentRegister(sname,course,mobileno,emailid,mark,status)values('"+sname+"','"+course+"','"+mobileno+"','"+emailid+"','Pending','Pending')");
         out.println("<script>alert('Record Inserted Successfully')</script>");
         response.sendRedirect("studentRegister.jsp");
                 
     }
     catch(Exception e)
     {
         out.println(e);
     }
         
     %>
    </body>
</html>
