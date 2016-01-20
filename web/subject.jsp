<%-- 
    Document   : subject
    Created on : 20 Jan, 2016, 8:06:09 PM
    Author     : Emin3M
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page language="java" import="java.sql.*"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    </head>
    <body>
<%
   try{
           
           int str=Integer.parseInt(request.getParameter("sid"));
            session.setAttribute("subid",str);
           Class.forName("com.mysql.jdbc.Driver");
        Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","eminem");
           Statement st=cn.createStatement();
           if(str==1){%>
               <jsp:forward page="exam1.jsp"/>
           <%} 
            else if(str==2){%> 
                <jsp:forward page="exam2.jsp"/>
           <%}
            else if(str==3){%> 
                <jsp:forward page="exam3.jsp"/>
           <%}
           
           }catch(Exception e){
               out.println("error is"+e);
               
           }
 %>
    </body>
</html>

