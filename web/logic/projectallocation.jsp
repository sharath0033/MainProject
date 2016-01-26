<%-- 
    Document   : projectallocation
    Created on : 26 Jan, 2016, 12:49:19 AM
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
                String tid=request.getParameter("tno");
                String tguide=request.getParameter("guide");
                String tlid=request.getParameter("tml");
                String memb=request.getParameter("mem2");
                String memc=request.getParameter("mem3");
                String memd=request.getParameter("mem4");
                String remark=request.getParameter("remark");

try
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","eminem");
        Statement st=cn.createStatement();
    
               // out.println("connection established");
                String qry="INSERT INTO project.projectregister(Team_ID,  Internal_Guide,  Team_Leader,  Member_2,  Member_3,  Member_4,Remarks) VALUES ('"+tid+"','"+tguide+"','"+tlid+"','"+memb+"','"+memc+"','"+memd+"','"+remark+"')";
                session.setAttribute("userId",tid);
                if(st.executeUpdate(qry)>0)
                    { 
                     %>
                     <jsp:forward page="../ui/guideregistermsg.jsp">
                         <jsp:param name="p1" value="<%=tid%>"/>
                         <jsp:param name="p2" value="Successfully Allocated"/>
                     </jsp:forward>
                   <%  
                   }
                //  st.close();
                  //cn.close();
    }
                  catch(Exception e)
                  {
                        out.println(e); 
                   }
                %>
    </body>
</html>
