<%-- 
    Document   : reportexam
    Created on : 24 Jan, 2016, 2:17:59 AM
    Author     : Emin3M
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Exam Report</title>
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
                padding-bottom: 40px;
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
            <div><h1><u>Student's Exam Report</u></h1></div>
        <div class="content">
        <form name="form1">
        <%
                        try
                        {
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","eminem");
                        Statement st=cn.createStatement();
                        Statement st1=cn.createStatement();
                        Statement st2=cn.createStatement();                     
                        %>
                        
                        <h3 style="margin-top:10px"><u>Group A</u></h3>
                        <table border="2" cellspacing=5 cellpading=5>
                            <tr>
                                <th>Registration_ID </th>
                                <th>Marks</th>
                                <th>Subject_ID</th>
                                <th>Grade</th>
                                
                            </tr>
                            
                            <%
                            
                            ResultSet rs=st.executeQuery("SELECT * FROM resultstudent WHERE grade='A'");
                            while(rs.next())
                            {
                            
                            
                            out.println("<tr>");
                            out.println("<td>"+rs.getString(1)+"</td>");
                            out.println("<td>"+rs.getString(2)+"</td>");
                            out.println("<td>"+rs.getString(3)+"</td>");
                            out.println("<td>"+rs.getString(4)+"</td>");
                            
                            out.println("</tr>"); 
                            
                            
                            }
                            rs.close();
                            %>
                        </table>
                        <h3 style="margin-top:30px"><u>Group B</u></h3>
                        <table border="2" cellspacing=5 cellpading=5>
                            <tr>
                                <th>Registration_ID </th>
                                <th>Marks</th>
                                <th>Subject_ID</th>
                                <th>Grade</th>
                                
                            </tr>
                            <%
                            ResultSet rs1=st1.executeQuery("SELECT * FROM resultstudent WHERE grade='B'");
                            while(rs1.next())
                            {
                            out.println("<tr>");
                            out.println("<td>"+rs1.getString(1)+"</td>");
                            out.println("<td>"+rs1.getString(2)+"</td>");
                            out.println("<td>"+rs1.getString(3)+"</td>");
                            out.println("<td>"+rs1.getString(4)+"</td>");
                            out.println("</tr>");
                            
                            
                            }
                            rs1.close();
                            %>
                        </table>
                        <h3 style="margin-top:30px"><u>Group C</u></h3>
                        <table border="2" cellspacing=5 cellpading=5>
                        <tr>
                            <th>Registration_ID </th>
                            <th>Marks</th>
                            <th>Subject_ID</th>
                            <th>Grade</th>
                            
                        </tr>
                        <%
                        ResultSet rs2=st2.executeQuery("SELECT * FROM resultstudent WHERE grade='C'");
                        while(rs2.next())
                        {
                        out.println("<tr>");
                        out.println("<td>"+rs2.getString(1)+"</td>");
                        out.println("<td>"+rs2.getString(2)+"</td>");
                        out.println("<td>"+rs2.getString(3)+"</td>");
                        out.println("<td>"+rs2.getString(4)+"</td>");
                        out.println("</tr>");
                        
                        
                        }
                        rs2.close();
                        
                        %>
                        </table>
                        <br>
                        <%
                        }
                        catch(Exception e)
                        {
                        out.println("error is"+e);
                        
                        }
                        %>             
                        <input style="padding-top:5px;padding-bottom:5px;padding-left:10px;padding-right:10px" type="button" value="Print" onclick="window().print();">

  </form>
    </div>
    </center>

        <div class="copyright">Copyright © 2016 by Avanthi Inst of Engg & Tech. All Rights Reserved.</div>
        
    </body>
</html>