<%-- 
    Document   : guideregistration
    Created on : 25 Jan, 2016, 9:49:58 AM
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
    
    <body>
      <%
//String flag=(String)session.getAttribute("authentication");
 //  if(flag!=null)//authenticate beginning
   //{
//Connection cn=null;
//Statement st=null;
                String regid=request.getParameter("htno");
                String regfname=request.getParameter("fname");
                String reglname=request.getParameter("lname");
                String phno=request.getParameter("phone");
                String email=request.getParameter("emailid");

try
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","eminem");
        Statement st=cn.createStatement();
    
               // out.println("connection established");
                String qry="INSERT INTO project.guideregister VALUES ('"+regid+"','"+regfname+"','"+reglname+"','"+phno+"','"+email+"')";
                session.setAttribute("userId",regid);
                if(st.executeUpdate(qry)>0)
                    { 
                     %>
                     <jsp:forward page="../ui/guideregistermsg.jsp">
                         <jsp:param name="p1" value="<%=regid%>"/>
                         <jsp:param name="p2" value="<%=regfname%>"/>
                         <jsp:param name="p3" value="Successfully Registered"/>
                     </jsp:forward>
                   <%  
                   }
                //  st.close();
                  //cn.close();
    }
                  catch(Exception e)
                  {
                    String trace = e.toString();
                  
                    if(trace.equals("com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Duplicate entry '"+phno+"' for key 'Mobile_No_UNIQUE'")){
                       %>
                        <jsp:forward page="../ui/guideerrormsg.jsp">
                            <jsp:param name="p1" value="<%=phno%>"/>
                            <jsp:param name="p2" value="Mobile No"/>
                        </jsp:forward>
                        <%
                    }
                  
                    if(trace.equals("com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Duplicate entry '"+email+"' for key 'Email_ID_UNIQUE'")){
                        %>
                        <jsp:forward page="../ui/guideerrormsg.jsp">
                            <jsp:param name="p1" value="<%=email%>"/>
                            <jsp:param name="p2" value="Email ID"/>
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
