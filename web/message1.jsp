<%-- 
    Document   : message1
    Created on : 18 Jan, 2016, 5:18:12 PM
    Author     : Emin3M
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Redirection Page</title>
    <style>
            body{
                width: 100%;
                margin: auto;
                color: #eeeeee;
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
                String s1 = session.getAttribute("userId").toString();
                String s2=request.getParameter("p2");
            %>
                <center>
                    <h1 style="color:brown"><%=s1%> <%=s2%></h1>
                    <div style="padding:30px;"><h2>Please click Next to continue to Exam Page</h2> 
                    <a href="subjectpage.jsp">Next ==>></a></div>
                    <div style="padding:30px;"><h2>Click Catalog button to go to Student Column Page</h2>
                    <a href ="catalogstudent.jsp">Catalog</a></div>
                </center>
        </div>
        <div class="copyright">Copyright © 2016 by Avanthi Inst of Engg & Tech. All Rights Reserved.</div>
    </body>
</html>