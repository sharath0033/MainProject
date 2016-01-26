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
            
            #login{
                padding-left: 20px;
                padding-right: 20px;
                padding-top: 5px;
                padding-bottom: 5px;
            }
            
            #error{
                color: red;
                text-align: center;
                padding-top: 20px;
                padding-bottom: 20px;
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
            <a href="../home.html">
            <img id="bakimg" src="../pics/backbutton.png" alt="Back button" height="55" width="55"></a>
        </div>
        
        <center>
        <div class="content">
            <div style="padding-right:60px"><h1><u>Professor Login Page</u></h1></div>
            
            <form  name="prologinform" method="POST" action="../logic/professorlogin.jsp" onsubmit="return regvalidate(this)">
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
            
        </div>
        </center>
        
        <div class="copyright">Copyright © 2016 by Avanthi Inst of Engg & Tech. All Rights Reserved.</div>
        
    </body>
</html>