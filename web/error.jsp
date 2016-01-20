<%-- 
    Document   : error
    Created on : 19 Jan, 2016, 8:19:35 PM
    Author     : Emin3M
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Error</title>
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
                color:black;
                font-family: helvetica;
                margin: 20px;
                padding: 10px;
            }
            
            a{
                text-decoration: none;
                color: red;
                font-size: 25px;
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
        
        <div class="content">
            <%
            String s1=request.getParameter("p1");
            String s2=request.getParameter("p2");
            %>
                <center>
                    <h1><u>Registration Unsuccessful</u></h1>
                    <div style="padding:30px;"><h2><span style="color:brown"><%=s1%></span> <%=s2%> already exists in Database. Please provide an Unique <%=s2%></h2> 
                    </div>
                    <div style="padding:30px;"><h2>To return to Home Page please click Back</h2>
                    <a href ="home.html"><<== Back</a></div>
                </center>
        </div>
        <div class="copyright">Copyright © 2016 by Avanthi Inst of Engg & Tech. All Rights Reserved.</div>
    </body>
</html>
