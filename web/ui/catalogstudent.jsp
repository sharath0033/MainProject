<%-- 
    Document   : studentcatlog
    Created on : 20 Jan, 2016, 12:41:32 AM
    Author     : Emin3M
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Column</title>
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
            
            .content{
                font-size: 22px;
                padding:5px;
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
    <%
        String uid = session.getAttribute("userId").toString();
    %>
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
       
        <center> 
        <div style="padding-left:70px"><h1><u>Student Column</u></h1></div>
        <div class="content">
            <hr><a href="../ui/studentprofile.jsp"><h2><span class="icons">☢</span> My Profile</h2></a><hr>
            <a href="../ui/guideinfo.jsp"><h2><span class="icons">☢</span> Internal Guide</h2></a><hr>
    <%
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","eminem");
            Statement st=cn.createStatement();
            ResultSet rs=st.executeQuery("SELECT Registration_ID FROM resultstudent WHERE Registration_ID='"+uid+"'");
            if(rs.next()){%>
                <a href="../ui/viewresult.jsp"><h2><span class="icons">☢</span> Exam Result</h2></a><hr>
            <%}
            else{%>                                 
                <a href="../ui/subjectpage.jsp"><h2><span class="icons">☢</span> Take Exam</h2></a><hr>
            <%}
        }
        catch(Exception e){
            out.println("error at"+e);
        }
    %>
            <a href="../ui/projectstudentform.jsp"><h2><span class="icons">☢</span> Project Details</h2></a><hr>
        </div>
        </center>
        
    <div class="copyright">Copyright © 2016 by Avanthi Inst of Engg & Tech. All Rights Reserved.</div>
        
    </body>
</html>
