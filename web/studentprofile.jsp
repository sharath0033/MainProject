<%-- 
    Document   : studentprofile
    Created on : 20 Jan, 2016, 11:20:34 AM
    Author     : Emin3M
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.sql.*" session="true"%>
<%@ page language="java" import="java.io.*"%>
<!DOCTYPE html>
    <%
        String uid=request.getParameter("uid");
    %>
<html>
    <%
        String[] profile=new String[10];
     try
         {
         Class.forName("com.mysql.jdbc.Driver");
         Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","eminem");
         Statement st=cn.createStatement();
         ResultSet rs=st.executeQuery("SELECT * FROM register WHERE Registration_ID='"+uid+"'");
         while(rs.next()){
    %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Profile</title>
        <style>
            body{
                width: 100%;
                margin: auto;
                background: #eeeeee;
            }
        
            .container{
                width: 100%;
                margin: 0 auto;
            }
            
            .header{
                background-color: black;
                width: 100%;
                top: 0;
            }
            
            .home{
                float: left;
                padding:10px;
                padding-left: 60px;
            }
            
            .title{
                color:white;
                font-family: helvetica;
                font-size:140%;
                text-align:center;
                padding:10px;
                padding-right:150px;
            }
            
            .content{
                font-family: helvetica;
                font-size: 22px;
                margin-top: 20px;
                float: left;
                margin-left: 100px;
                padding-bottom: 50px;
            }
            
            a{
                text-decoration: none;
            }
            
            span{
                color: black;
            }
            
            .back{
                margin: 10px;
                float: left;
            }
            
            .logout{
                margin: 10px;
                float: right;
            }
            
            .copyright{
                background-color:black;
                font-family: helvetica;
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
            <div class="container">
                <div class="home">
                    <a href="home.html">
                    <img id="img" src="logo.png" alt="Home page" ></a>
                </div>
	
                <div class="title">
                <h1>STUDENT  PROJECT  ALLOCATION</h1>
                </div>
            </div>
        </div> 
        <div class="back">
                    <a href="studentloginform.jsp">
                    <img id="img" src="backbutton.png" alt="Back button" height="55" width="55"></a>
        </div>
        
        <div class="logout">
                    <a href="home.html">
                    <img id="img" src="logout.png" alt="Logout button" height="55" width="55"></a>
        </div>
        
        <div style="font-family: helvetica"><center><h1><u>My Profile</u></h1></</div>
        
        <div class="content">
            <table cellpadding="10">
                <tr>
                    <td><b>⚓ - Registered ID :</b></td>
                    <td><div><%=rs.getString(1)%></div></td>
                </tr>
                <tr>
                    <td><b>✎ - First Name :</b></td>
                    <td><div><%=rs.getString(2)%></div></td>
                </tr>
                <tr>
                    <td><b>✎ - Last Name :</b></td>
                    <td><div><%=rs.getString(3)%></div></td>
                </tr>
                <tr>
                    <td><b>🎂 - Date Of Birth :</b></td>
                    <td><div><%=rs.getString(4)%></div></td>
                </tr>
                <tr>
                    <td><b>👩 - Gender:</b></td>
                    <td><div><%=rs.getString(5)%></div></td>
                </tr>
                <tr>
                    <td><b>❄ - Branch :</b></td>
                    <td><div><%=rs.getString(6)%></div></td>
                </tr>
                <tr>
                    <td><b>📅 - Year :</b></td>
                    <td><div><%=rs.getString(7)%></div></td>
                </tr>
                <tr>
                    <td><b>☏ - Phone No :</b></td>
                    <td><div><%=rs.getString(8)%></div></td>
                </tr>
                <tr>
                    <td><b>✍ - Address :</b></td>
                    <td><div><%=rs.getString(9)%></div></td>
                </tr>
                <tr>
                    <td><b>✉ - Email ID :</b></td>
                    <td><div><%=rs.getString(10)%></div></td>
                </tr> 
            </table>
        </div>
        <div class="copyright">Copyright © 2016 by Avanthi Inst of Engg & Tech. All Rights Reserved.</div>
    </body>
    <%
        }  
   // rs.close();
    }
     catch(Exception e)
     {
         out.println("error is"+e);
         
     }
     
    // st.close();
     //cn.close();
    %>
</html>