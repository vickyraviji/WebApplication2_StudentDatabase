<%-- 
    Document   : EnqRegisterFormDB
    Created on : 23 May, 2018, 9:30:01 AM
    Author     : SHREELAKSHMI
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
     String fname=request.getParameter("fname").toString();
     String fmobileno=request.getParameter("mno").toString();
     
     
     try
     {
         Class.forName("com.mysql.jdbc.Driver");
         Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/JDBCFita","root","vicky777");
         Statement st=con.createStatement();
         st.execute("insert into enquiryRegisterForm(sname,course,mobileno,emailid,fname,fmobileno)values('"+sname+"','"+course+"','"+mobileno+"','"+emailid+"','"+fname+"','"+fmobileno+"')");
         out.println("<script>alert('Record Inserted Successfully')</script>");
         response.sendRedirect("EnqRegisterForm.jsp");
                 
     }
     catch(Exception e)
     {
         out.println(e);
     }
         
     %>
    </body>
</html>
