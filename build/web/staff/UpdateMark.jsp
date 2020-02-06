<%-- 
    Document   : UpdateMark
    Created on : 24 May, 2018, 8:50:14 AM
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
       <jsp:include page="staffMenu.jsp" flush="true"></jsp:include>
        <%
        String  eid=session.getAttribute("emailidURL").toString();
          out.println("<table align=right><tr><td>Welcome ! "+eid+"</td></tr></table> ");
        %>
        <br><br><br><br><br><br><br>
    <center> 
        
        <form name="f1" action="UpdateMarkDB.jsp" method="post">
            
            <table>
                <tr>
                    <td>Select Id </td>
                    <td>
                        <select name="sid">
                            <option>Select</option>
                            
                            <%
                            try
                            {
                                   Class.forName("com.mysql.jdbc.Driver");
         Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/JDBCFita","root","vicky");
         Statement st1=con1.createStatement();
         ResultSet rs1=st1.executeQuery("select sid from studentRegister where status='Pending'");
         
         while(rs1.next())
         {
             out.println("<option>"+rs1.getInt(1)+"</option>");
         }
                     rs1.close();
                            
                            }
                            catch(Exception e)
                            {
                                
                            }
                            
                            %>
                        </select>
                        
                    </td>
                </tr>
                
                <tr>
                    <td>Enter Mark</td>
                    <td><input type="text" name="mark" required></td>
                </tr>
                
                <tr>
                    <td colspan="2" align="center"><input type="submit" value="Submit"></td>
                  
                </tr>
                
                
            </table>
               
        </form>
        
    </center>
    </body>
</html>
