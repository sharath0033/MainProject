<%-- 
    Document   : guideerrormsg
    Created on : 25 Jan, 2016, 12:26:21 PM
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
        
        <div class="back">
            <a href="../ui/guideregistrationform.jsp">
            <img id="bakimg" src="../pics/backbutton.png" alt="Back button" height="55" width="55"></a>
        </div>
        
        <center>
        <div class="content">
            <%
                String s1=request.getParameter("p1");
                String s2=request.getParameter("p2");
            %>
            <div style="padding-right:60px"><h1><u>Registration Unsuccessful</u></h1></div>
            <div style="padding:20px;"><h2>
                    <span style="color:brown">
                        <%=s1%>
                    </span> <%=s2%> already exists in Database. Please provide an Unique <%=s2%>.</h2> 
            </div>
            <div style="padding:20px;"><h2>To return to Registration Page and try again, Please click the button below.</h2>
            <a href ="../ui/guideregistrationform.jsp"><img id="bakimg" src="../pics/register.png" alt="Back button" height="65" width="65"></a></div>
                
        </div>
        </center>
        <div class="copyright">Copyright © 2016 by Avanthi Inst of Engg & Tech. All Rights Reserved.</div>
    </body>
</html>

