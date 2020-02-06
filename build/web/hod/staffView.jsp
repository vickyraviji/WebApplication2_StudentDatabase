<%-- 
    Document   : staffView
    Created on : 22 May, 2018, 10:18:50 AM
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
                <td colspan="7" align="center">Staff Details</td>
            </tr>
            <tr>
                <td>Staff ID</td>
                <td>Staff Name</td>
                <td>Qualification</td>
                <td>Salary</td>
               <td>Year Of Exp</td>
               <td>Mobile No</td>
                <td>Email Id</td>
            </tr>
            
        <%
       
            
            
      
             try
     {
         Class.forName("com.mysql.jdbc.Driver");
         Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/JDBCFita","root","vicky");
         Statement st=con.createStatement();
         ResultSet rs=st.executeQuery("select id,name,qualification,salary,yearofExp,mobileno,emailid from staffregister");
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
                 <td><%=rs.getString(7).toString()%></td>
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
        
    
    </body>
</html>
