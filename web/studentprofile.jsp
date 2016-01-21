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
        String uid = session.getAttribute("userId").toString();
    %>
<html>
    <%
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
                font-family: helvetica;
                background: #eeeeee;
            }
            
            .header{
                background-color: black;
                width: 100%;
                margin: 0 auto;
                top: 0;
            }
            
            .home{
                float: left;
                padding:10px;
                padding-left: 60px;
            }
            
            .title{
                color:white;
                font-size:140%;
                text-align:center;
                padding:10px;
                padding-right:150px;
            }
            
            .content{
                font-size: 22px;
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
                margin-top:20px;
                color:white;
                text-align:center;
                width: auto;
                padding: 10px;
                bottom: 0;
            }
    </style>
    </head>
    <body>
        <div class="header">
            <div class="home">
                <a href="home.html"><img src="logo.png" alt="Home page" ></a>
            </div>
            <div class="title">
                <h1>STUDENT  PROJECT  ALLOCATION</h1>
            </div>
        </div> 
        
        <div class="back">
            <a href="catalogstudent.jsp">
            <img id="bakimg" src="backbutton.png" alt="Back button" height="55" width="55"></a>
        </div>
        
        <div class="logout">
                    <a href="home.html">
                    <img id="logimg" src="logout.png" alt="Logout button" height="55" width="55"></a>
        </div>
        
        
        <center> 
        <div><h1><u>My Profile</u></h1></div>
        <div class="content">
            <table border="0" cellpadding="10">
                <tr>
                    <td><b>⚓ - Registered ID :</b></td>
                    <td><%=rs.getString(1)%></td>
                </tr>
                <tr>
                    <td><b>✎ - First Name :</b></td>
                    <td><%=rs.getString(2)%></td>
                </tr>
                <tr>
                    <td><b>✎ - Last Name :</b></td>
                    <td><%=rs.getString(3)%></td>
                </tr>
                <tr>
                    <td><b>🎂 - Date Of Birth :</b></td>
                    <td><div><%=rs.getString(4)%></div></td>
                </tr>
                <tr>
                    <td><b>👩 - Gender:</b></td>
                    <td><%=rs.getString(5)%></td>
                </tr>
                <tr>
                    <td><b>❄ - Branch :</b></td>
                    <td><%=rs.getString(6)%></td>
                </tr>
                <tr>
                    <td><b>📅 - Year :</b></td>
                    <td><%=rs.getString(7)%></td>
                </tr>
                <tr>
                    <td><b>☏ - Phone No :</b></td>
                    <td><%=rs.getString(8)%></td>
                </tr>
                <tr>
                    <td><b>✍ - Address :</b></td>
                    <td><%=rs.getString(9)%></td>
                </tr>
                <tr>
                    <td><b>✉ - Email ID :</b></td>
                    <td><%=rs.getString(10)%></td>
                </tr> 
            </table>
        </div>
        </center>
    
        <div class="copyright">Copyright © 2016 by Avanthi Inst of Engg & Tech. All Rights Reserved.</div>
        
    </body>
    <%
        }  
    }
        catch(Exception e){
                out.println("error is"+e);
        }
    %>
</html>