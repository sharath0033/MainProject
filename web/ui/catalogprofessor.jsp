<%-- 
    Document   : catalogprofessor
    Created on : 20 Jan, 2016, 1:27:47 AM
    Author     : Emin3M
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Professor Column</title>
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
       
        <center> 
        <div style="padding-left:70px"><h1><u>Professor Column</u></h1></div>
        
        <div class="content">
            <hr><a href="../ui/guideregistrationform.jsp"><h2><span class="icons">📝</span> Internal Guide Registration</h2></a><hr>
            <a href="../ui/projectallocform.jsp"><h2><span class="icons">🛠</span> Project Allocation</h2></a><hr>
            <a href="../ui/reports.jsp"><h2><span class="icons">📚</span> Reports Column</h2></a><hr>
        </div>
        <div class="copyright">Copyright © 2016 by Avanthi Inst of Engg & Tech. All Rights Reserved.</div>
        
    </body>
</html>
