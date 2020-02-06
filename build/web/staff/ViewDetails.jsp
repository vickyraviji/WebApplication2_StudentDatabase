<%-- 
    Document   : ViewDetails
    Created on : 24 May, 2018, 9:03:29 AM
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
   <br><br><br><br>
         <jsp:include page="staffMenu.jsp" flush="true"></jsp:include>
        
        <%
        String  eid=session.getAttribute("emailidURL").toString();
           out.println("<table align=right><tr><td>Welcome ! "+eid+"</td></tr></table> ");
        %>
        
    <center>
         <br><br><br><br>
        <table bordercolor="green" border="2">
            <tr>
                <td colspan="6" align="center">Student Details</td>
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
           
           String op=request.getParameter("options").toString();
          
          
           
             try
     {
         Class.forName("com.mysql.jdbc.Driver");
         Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/JDBCFita","root","vicky");
         Statement st=con.createStatement();
         ResultSet rs=st.executeQuery("select sid,sname,course,mobileno,emailid,mark from studentRegister where status = '"+op+"'");
       
        
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
    </center>
        
    </body>
</html>
