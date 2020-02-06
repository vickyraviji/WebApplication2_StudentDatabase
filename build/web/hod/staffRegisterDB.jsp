<%-- 
    Document   : staffRegisterDB
    Created on : 24 May, 2018, 8:25:14 AM
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
            
              String name=request.getParameter("name").toString();
     String qualification=request.getParameter("qualification").toString();
     String mobileno=request.getParameter("mobileno").toString();
     String emailid=request.getParameter("emailid").toString();
     String salary=request.getParameter("salary").toString();
     String yearofexp=request.getParameter("yrOfExp").toString();
        
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
         Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/JDBCFita","root","vicky");
         
         PreparedStatement ps=con.prepareStatement("insert into staffregister(name,qualification,salary,yearofExp,mobileno,emailid)values(?,?,?,?,?,?)");
         ps.setString(1, name);
          ps.setString(2, qualification);
           ps.setString(3, salary);
            ps.setString(4, yearofexp);
             ps.setString(5, mobileno);
              ps.setString(6, emailid);
              ps.executeUpdate();
              out.println("<center>Record Inserted Successfully</center>");
              RequestDispatcher reqDis=request.getRequestDispatcher("staffRegister.jsp");
              reqDis.include(request, response);
              
            }
            catch(Exception e)
            {
                out.println(e);
            }
        %>
    </body>
</html>
