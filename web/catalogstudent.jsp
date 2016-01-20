<%-- 
    Document   : studentcatlog
    Created on : 20 Jan, 2016, 12:41:32 AM
    Author     : Emin3M
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%
        String uid=request.getParameter("uid");
    %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Column</title>
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
                text-align: center;
                font-family: helvetica;
                font-size: 22px;
                margin-top: 20px;
            }
            
            a{
                text-decoration: none;
                color: darkblue;
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
        
        <div style="font-family: helvetica"><center><h1><u>Student Column</u></h1></</div>
        
        <div class="content">
            <hr><a href="studentprofile.jsp?uid=<%=uid%>"><h2><span>☢</span> My Profile</h2></a><hr>
            <a href="home.html"><h2><span>☢</span> Internal Guide</h2></a><hr>
            <a href="home.html"><h2><span>☢</span> Take Exam</h2></a><hr>
            <a href="home.html"><h2><span>☢</span> Project Details</h2></a><hr>
        </div>
        <div class="copyright">Copyright © 2016 by Avanthi Inst of Engg & Tech. All Rights Reserved.</div>
    </body>
</html>
