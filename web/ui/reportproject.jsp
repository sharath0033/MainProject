<%-- 
    Document   : reportproject
    Created on : 26 Jan, 2016, 1:14:44 AM
    Author     : Emin3M
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Project Report</title>
    <style>
            body{
                width: 100%;
                margin: auto;
                font-family: helvetica;
                color:black;
                background: #eeeeee;
            }
            
            .header{
                background-color: black;
                width: 100%;
                margin: 0 auto;
                height:130px;
                top: 0;
            }
            
            .home{
                float: left;
                padding:10px;
                padding-left: 80px;
            }
            
            .title{
                color:white;
                text-align:center;
                padding:20px;
            }
            
            .update{
                border-bottom: 3px solid white;
            }
            
            .back{
                margin: 10px;
                float: left;
            }
            
            .content{
                padding:5px;
                padding-bottom: 60px;
            }
            
            a{
                text-decoration: none;
                color: darkblue;
            }
            
            .icons{
                color: black;
            }
            
            .logout{
                margin: 10px;
                float: right;
            }
            
            .copyright{
                background-color:black;
                margin-top:20px;
                color:white;
                text-align:center;
                width: 100%;
                padding: 10px;
                bottom: 0;
                position: fixed;
            }
    </style>
    </head>
    <body>
        <div class="header">
            <div class="home">
                <a href="../home.html"><img src="../pics/logo.png" alt="Home page" ></a>
            </div>
            <div class="title">
                <h1><span class="update" style="font-size:140%;">STUDENT  PROJECT  ALLOCATION</span><span class="update" style="font-size:70%;"> & MANAGEMENT</span></h1>
            </div>
        </div> 
        
        <div class="logout">
            <a href="../home.html">
            <img id="logoutimg" src="../pics/logout.png" alt="Logout button" height="55" width="55"></a>
        </div>
        
        <div class="back">
            <a href="../ui/reports.jsp">
            <img id="bakimg" src="../pics/backbutton.png" alt="Back button" height="55" width="55"></a>
        </div>
       
        <center>
            <div><h1><u>Student's Project Report</u></h1></div>
        <div class="content">
    <%
     try
         {
         Class.forName("com.mysql.jdbc.Driver");
        Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","eminem");
         Statement st=cn.createStatement();
         ResultSet rs=st.executeQuery("SELECT * FROM projectregister ");
    %> 
          <center>
          <form name="form1">
              
          <table border="2" cellspacing="5" cellpadding="5">
              <thead>
                  <center><tr>
                      <th>Team_ID</th>
                      <th>Internal_Guide</th>
                      <th>Team_Leader</th>
                      <th>Member_2</th>
                      <th>Member_3</th>
                      <th>Member_4</th>
                      <th>Project_Title</th>
                      <th>Front_End</th>
                      <th>Back_End</th>
                      <th>Remarks</th>
                      </tr>
              </thead>
              <tbody>
                  
         <%
            while(rs.next())
                {
                out.println("<tr>");
                out.println("<td>"+rs.getString(1)+"</td>");
                out.println("<td>"+rs.getString(2)+"</td>");
                out.println("<td>"+rs.getString(3)+"</td>");
                out.println("<td>"+rs.getString(4)+"</td>");
                out.println("<td>"+rs.getString(5)+"</td>");
                out.println("<td>"+rs.getString(6)+"</td>");
                out.println("<td>"+rs.getString(7)+"</td>");
                out.println("<td>"+rs.getString(8)+"</td>");
                out.println("<td>"+rs.getString(9)+"</td>");
                out.println("<td>"+rs.getString(10)+"</td>");
               }
            %>  
             </tbody>
          </table>
          
             <br>
          <input style="padding-top:5px;padding-bottom:5px;padding-left:10px;padding-right:10px" type="button" value="Print" onclick="window().print();">

  </form>
          
    </body>
    
    <%
   // rs.close();
    }
     catch(Exception e)
     {
         //out.prinln("error is"+e);
     }
    // st.close();
     //cn.close();
    %>
        </div>
    </center>
        <div class="copyright">Copyright © 2016 by Avanthi Inst of Engg & Tech. All Rights Reserved.</div>
        
    </body>
</html>