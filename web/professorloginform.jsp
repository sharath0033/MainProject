<%-- 
    Document   : professorloginform
    Created on : 18 Jan, 2016, 3:02:11 PM
    Author     : Emin3M
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Professor Login</title>
        
        <script type="Text/JavaScript">
        function regvalidate(form){
            if(document.prologinform.txt1.value===""){
                document.getElementById('error').innerHTML = "Please enter your Username";
                prologinform.txt1.focus();
                return false;
            }
            if(document.prologinform.txt2.value===""){
                document.getElementById('error').innerHTML = "Please enter your Password";
                prologinform.txt2.focus();
                return false;
            }
            else{
                return true;
            }
        }
    </script>
    
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
                font-family: helvetica;
                padding:5px;
            }
            
            #login{
                padding-left: 20px;
                padding-right: 20px;
                padding-top: 5px;
                padding-bottom: 5px;
                margin-top: 20px;
            }
            
            #error{
                color: red;
                text-align: center;
                padding-top: 20px;
                padding-bottom: 20px;
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
            <center>
            <h1><u>Professor Login Page</u></h1>
        <form  name="prologinform" method="POST" action="professorlogin.jsp" onsubmit="return regvalidate(this)">
            <table border="0" cellpadding="10">
                <tr>
                    <td style="float:right"><b>Username :</b></td>
                    <td><input type=text name="txt1" style="width:100%"></td> 
                </tr>
              
                
                <tr>
                    <td style="float:right"><b>Password :</b></td>
                    <td><input type=password name="txt2" style="width:100%"></td>
                </tr>
            </table>
            <div id="error"></div>
            <input type="submit" value="Login" id="login">
            
        </form>
            </center>
        </div>
        
        <div class="copyright">Copyright © 2016 by Avanthi Inst of Engg & Tech. All Rights Reserved.</div>
    </body>
</html>