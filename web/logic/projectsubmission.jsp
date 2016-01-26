<%-- 
    Document   : projectsubmission
    Created on : 26 Jan, 2016, 11:47:16 AM
    Author     : Emin3M
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page language="java" import="java.sql.*"%>
<%@ page language="java" import="java.io.*"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <%
        String uid = session.getAttribute("userId").toString();
    %>
    <body>
      <%
//String flag=(String)session.getAttribute("authentication");
 //  if(flag!=null)//authenticate beginning
   //{
//Connection cn=null;
//Statement st=null;
                String ptitle=request.getParameter("title");
                String pfront=request.getParameter("frntend");
                String pback=request.getParameter("backend");
try
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","eminem");
        Statement st=cn.createStatement();
    
               // out.println("connection established");
                String qry="UPDATE project.projectregister SET Project_Title='"+ptitle+"', Front_End='"+pfront+"', Back_End='"+pback+"' WHERE Team_Leader='"+uid+"'";
                if(st.executeUpdate(qry)>0)
                    { 
                     %>
                     <jsp:forward page="../ui/submissionmsg.jsp">
                         <jsp:param name="p1" value="<%=ptitle%>"/>
                         <jsp:param name="p2" value="Successfully Submitted"/>
                     </jsp:forward>
                   <%  
                   }
                //  st.close();
                  //cn.close();
    }
                  catch(Exception e)
                  {
                    String trace = e.toString();

                    if(trace.equals("com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Duplicate entry '"+ptitle+"' for key 'PRIMARY'")){
                        %>
                        <jsp:forward page="../ui/submissionerror.jsp">
                            <jsp:param name="p1" value="<%=ptitle%>"/>
                            <jsp:param name="p2" value="Project Title"/>
                        </jsp:forward>
                        <%
                    }
                    else{
                        out.println(trace); 
                    
                    }
                   }
                %>
    </body>
</html>
