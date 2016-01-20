<%-- 
    Document   : professorlogin
    Created on : 18 Jan, 2016, 3:11:58 PM
    Author     : Emin3M
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.sql.*"%>
<%@ page language="java" import="java.io.*"%>
<% 
    try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","eminem");
            Statement st=cn.createStatement();
            String uid=request.getParameter("txt1");
            String pwd=request.getParameter("txt2");
            if(uid.equals("sharath")&&pwd.equals("chandra"))
            {%>
                <jsp:forward page="catalogprofessor.jsp"/>
            <%}
            else
            {%>
                <jsp:forward page="errorloginprofessor.jsp"/>
            <%}
        }
    catch(Exception e)
        {
            out.println("exception is"+e);
        }
%>