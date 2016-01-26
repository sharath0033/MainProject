<%-- 
    Document   : guideinfo
    Created on : 27 Jan, 2016, 1:08:25 AM
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
         Statement st1=cn.createStatement();
         ResultSet rs=st.executeQuery("SELECT Internal_Guide FROM projectregister WHERE Team_Leader='"+uid+"' OR Member_2='"+uid+"' OR Member_3='"+uid+"' OR Member_4='"+uid+"'");
         String qry[]=new String[5];
         while(rs.next()){
            qry[0]=rs.getString(1);
         }
         ResultSet rs1=st1.executeQuery("SELECT * FROM guideregister WHERE Guide_ID='"+qry[0]+"'");
         while(rs1.next()){
    %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Profile</title>
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
                font-size: 22px;
                padding-bottom: 60px;
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
        
        <div class="back">
            <a href="../ui/catalogstudent.jsp">
            <img id="bakimg" src="../pics/backbutton.png" alt="Back button" height="55" width="55"></a>
        </div>
        
        <div class="logout">
                    <a href="../home.html">
                    <img id="logimg" src="../pics/logout.png" alt="Logout button" height="55" width="55"></a>
        </div>
        
        
        <center> 
        <div><h1><u>My Profile</u></h1></div>
        <div class="content">
            <table border="0" cellpadding="10">
                <tr>
                    <td><b>🎓 - Guide ID :</b></td>
                    <td><%=rs1.getString(1)%></td>
                </tr>
                <tr>
                    <td><b>✎ - First Name :</b></td>
                    <td><%=rs1.getString(2)%></td>
                </tr>
                <tr>
                    <td><b>✎ - Last Name :</b></td>
                    <td><%=rs1.getString(3)%></td>
                </tr>
                <tr>
                    <td><b>☏ - Phone No :</b></td>
                    <td><%=rs1.getString(4)%></td>
                </tr>
                <tr>
                    <td><b>✉ - Email ID :</b></td>
                    <td><%=rs1.getString(5)%></td>
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
