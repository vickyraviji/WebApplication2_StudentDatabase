<%-- 
    Document   : enquiryList
    Created on : 22 May, 2018, 10:18:15 AM
    Author     : SHREELAKSHMI
--%>

<%@page import="java.sql.ResultSet"%>
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
        <jsp:include flush="true" page="hodMenu.jsp"></jsp:include>
        
        <br><br><br><br><br><br><br>
    <center>
        
        <table bordercolor="green" border="2">
            <tr>
                <td>Student No</td>
                <td>Student Name</td>
                <td>Qualification</td>
                <td>Mobile No</td>
                <td>Email Id</td>
                <td>Father Name</td>
                <td>Father Mobile No</td>
            </tr>
            
            
            
            <%
             try
     {
         Class.forName("com.mysql.jdbc.Driver");
         Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/JDBCFita","root","vicky777");
         Statement st=con.createStatement();
         ResultSet rs=st.executeQuery("select id,sname,course,mobileno,emailid,fname,fmobileno from enquiryRegisterForm");
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
