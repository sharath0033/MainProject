<%-- 
    Document   : submissionmsg
    Created on : 27 Jan, 2016, 1:52:24 AM
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
            
            .logout{
                margin: 10px;
                float: right;
            }
            
            .content{
                padding:5px;
                padding-bottom: 60px;
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
        <div class="content">
            <%
                String s1 =request.getParameter("p1");
                String s2=request.getParameter("p2");
            %>
            <div style="padding-left:70px"><h1><u>Submission Successful</u></h1></div>
            <h1 style="color:brown"><%=s1%> <%=s2%></h1>
            <div style="padding:15px;">
                <h2>Please click the button below to continue to Project Details.</h2> 
                <a href="../ui/projectstudentform.jsp">
                    <img id="nextimg" src="../pics/next.png" alt="Next Button" height="65" width="65">
                </a>
            </div>
            <div style="padding:15px;">
                <h2>Click the button below to go to Student Column.</h2>
                <a href ="../ui/catalogstudent.jsp">
                    <img id="catlogimg" src="../pics/catalog.png" alt="Catalog button" height="65" width="65">
                </a>
            </div>
        </div>
        </center>
    
        <div class="copyright">Copyright © 2016 by Avanthi Inst of Engg & Tech. All Rights Reserved.</div>
        
    </body>
</html>