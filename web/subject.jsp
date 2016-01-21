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
        if(str==1){%>
            <jsp:forward page="exam1.jsp?subid=1"/>
        <%} 
        else if(str==2){%> 
            <jsp:forward page="exam2.jsp?subid=2"/>
        <%}
        else if(str==3){%> 
            <jsp:forward page="exam3.jsp?subid=3"/>
        <%}
    }
    catch(Exception e){
        out.println("error is"+e);           
    }
 %>
    </body>
</html>

