<%-- 
    Document   : errorloginprofessor
    Created on : 20 Jan, 2016, 1:29:01 AM
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
                position: fixed;
            }
    </style>
    </head>
    <body>
        <div class="header">
            <div class="home">
                <a href="home.html"><img id="img" src="logo.png" alt="Home page" ></a>
            </div>
            <div class="title">
                <h1>STUDENT  PROJECT  ALLOCATION</h1>
            </div>
        </div> 
        <center>
        <div class="content">
            <h1><u>Login Failed</u></h1>
            <div style="padding:20px;"><h2>Please check your Username and Password</h2> 
                <h2>The credentials are not valid</h2> 
            </div>
            <div style="padding:20px;"><h2>Please click Back to return to Login Page</h2>
                <a href ="professorloginform.jsp"><h4><<==Back</h4></a>
            </div>
        </div>
        </center>
            
        <div class="copyright">Copyright © 2016 by Avanthi Inst of Engg & Tech. All Rights Reserved.</div>
    </body>
</html>
