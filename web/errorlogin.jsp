<%-- 
    Document   : errorlogin
    Created on : 20 Jan, 2016, 12:54:34 AM
    Author     : Emin3M
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Error</title>
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
            
            a{
                text-decoration: none;
                color: red;
                font-size: 25px;
            }
            
            .copyright{
                background-color:black;
                margin-top:20px;
                color:white;
                text-align:center;
                width: 100%;
                padding: 10px;
                bottom: 0;
                position:fixed;
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
        <center>
        <div class="content">
            <h1><u>Login Failed</u></h1>
            <div style="padding:20px;"><h2>Please check your Hallticket No and Password</h2> 
                <h2>If you are a new User, Please Register your Hallticket No</h2> 
            </div>
            <div style="padding:20px;"><h2>Please click the button below to go to Registration Page</h2>
                <a href ="studentloginform.jsp"><img id="bakimg" src="login.png" alt="Back button" height="65" width="65"></a>
            </div>
        </div>
        </center>
        
        <div class="copyright">Copyright © 2016 by Avanthi Inst of Engg & Tech. All Rights Reserved.</div>
        
    </body>
</html>
