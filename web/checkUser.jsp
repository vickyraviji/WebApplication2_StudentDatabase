<%-- 
    Document   : checkUser
    Created on : 22 May, 2018, 10:11:29 AM
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
      String role=request.getParameter("rb").toString();
      String uid=request.getParameter("userid").toString();
      String pw=request.getParameter("userpass").toString();
      String emailid="";
      
      if(role.equals("Staff"))
      {
          //out.println("Welcome Staff");
          
          
          try
          {
                Class.forName("com.mysql.jdbc.Driver");
         Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/JDBCFita","root","vicky");
         Statement st=con.createStatement();
         ResultSet rs=st.executeQuery("select id,mobileno,emailid from staffregister where id='"+uid+"' and mobileno='"+pw+"'");
         if(rs.next())
         {
             emailid=rs.getString("emailid").toString();
             session.setAttribute("emailidURL", emailid);
             response.sendRedirect("staff/home.jsp");
         }
         else
         {
             response.sendRedirect("Login.jsp");
         }
         
          }
          
          catch(Exception e)
          {
              out.println(e);
          }
      }
      else if(role.equals("HOD"))
      {
         // out.println("Welcome HOD");
          
          if(uid.equals("hod") && pw.equals("hod"))
          {
          response.sendRedirect("hod/home.jsp");
          }
          else
          {
              response.sendRedirect("Login.jsp");
          }
          
      }
      else    if(role.equals("Student"))
      {
          //out.println("Welcome Student");
          
           try
          {
                Class.forName("com.mysql.jdbc.Driver");
         Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/JDBCFita","root","vicky");
         Statement st=con.createStatement();
         ResultSet rs=st.executeQuery("select sid,mobileno from studentregister where sid='"+uid+"' and mobileno='"+pw+"'");
         if(rs.next())
         {
             response.sendRedirect("student/home.jsp");
         }
         else
         {
             response.sendRedirect("Login.jsp");
         }
         
          }
          
          catch(Exception e)
          {
              out.println(e);
          }

           
           
      }
      else
      {
          out.println("Select any roles");
      }
      %>
    </body>
</html>
