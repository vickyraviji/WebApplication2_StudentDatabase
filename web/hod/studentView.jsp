<%-- 
    Document   : studentView
    Created on : 22 May, 2018, 10:19:27 AM
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
         <jsp:include flush="true" page="hodMenu.jsp"></jsp:include>
        <center>
        <br><br><br><br><br><br><br><br>
        <table bordercolor="green" border="2">
            <tr>
                <td colspan="6" align="center">New Student Details</td>
            </tr>
            <tr>
                <td>Student ID</td>
                <td>Student Name</td>
                <td>Course</td>
                <td>Mobile No</td>
                <td>Email Id</td>
               <td>Mark</td>
            </tr>
            
            
            
            <%
             try
     {
         Class.forName("com.mysql.jdbc.Driver");
         Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/JDBCFita","root","vicky");
         Statement st=con.createStatement();
         ResultSet rs=st.executeQuery("select sid,sname,course,mobileno,emailid,mark from studentRegister where status = 'Pending'");
         while(rs.next())
         {
             %>
             
             <tr>
                <td><%=rs.getInt(1)%></td>
                <td><%=rs.getString(2).toString()%></td>
                <td><%=rs.getString(3).toString()%></td>
                <td><%=rs.getString(4).toString()%></td>
                <td><%=rs.getString(5).toString()%></td>
                <td><%=rs.getString(6).toString()%></td>
            </tr>
            
            
            <%
         }
            rs.close();
     }
             catch(Exception e)
             {
                out.println(e); 
             }
            
            %>
        </table>
        
        <br><br><br><br><br><br><br><br>
        
         <table bordercolor="green" border="2">
             
              <tr>
                <td colspan="6" align="center">Mark Details</td>
            </tr>
            
            <tr>
                <td>Student ID</td>
                <td>Student Name</td>
                <td>Course</td>
                <td>Mobile No</td>
                <td>Email Id</td>
              <td>Mark</td>
            </tr>
            
            
            
            <%
             try
     {
         Class.forName("com.mysql.jdbc.Driver");
         Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/JDBCFita","root","vicky");
         Statement st1=con1.createStatement();
         ResultSet rs1=st1.executeQuery("select sid,sname,course,mobileno,emailid,mark from studentRegister where status = 'Updated'" );
         while(rs1.next())
         {
             %>
             
             <tr>
                <td><%=rs1.getInt(1)%></td>
                <td><%=rs1.getString(2).toString()%></td>
                <td><%=rs1.getString(3).toString()%></td>
                <td><%=rs1.getString(4).toString()%></td>
                <td><%=rs1.getString(5).toString()%></td>
                <td><%=rs1.getString(6).toString()%></td>
               
                
            </tr>
            
            
            <%
         }
         
         rs1.close();
     }
             catch(Exception e)
             {
                out.println(e); 
             }
            
            %>
        </table>
        
        
        
    </center>
    </body>
</html>
