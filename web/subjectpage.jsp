<%-- 
    Document   : subjectpage
    Created on : 20 Jan, 2016, 7:26:54 PM
    Author     : Emin3M
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Subject Page</title>
        
        <script type="Text/JavaScript">
        function validation(form){
            if(document.subject.sid.value===""){
                document.getElementById('error').innerHTML = "Please Select Exam Paper";
                subject.sid.focus();
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
            
            .content{
                padding:5px;
            }
            
            #next{
                padding-left: 20px;
                padding-right: 20px;
                padding-top: 5px;
                padding-bottom: 5px;
            }
            
            table{
                text-align: center;
            }
            
            #error{
                color: red;
                padding-top: 20px;
                padding-bottom: 20px;
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
        
        <div class="back">
                    <a href="studentloginform.jsp">
                    <img id="img" src="backbutton.png" alt="Back button" height="55" width="55"></a>
        </div>
        
        <div class="logout">
                    <a href="home.html">
                    <img id="img" src="logout.png" alt="Logout button" height="55" width="55"></a>
        </div>
        
        
        <center>
        <div class="content">
            <div><h1><u>Exam Paper</u></h1></div>
            
            <form action="subject.jsp" method="POST" name="subject" onsubmit="return  validation(this)">
                <table border="0" cellspacing="10">
                        <tr>
                            <td><span style="font-weight:bold;">Exam Paper :</span></td>
                            <td><select name="sid" style="width:100%;">
                                    <option value="">Select Paper</option>
                                    <option value="1">Paper 1</option>
                                    <option value="2">Paper 2</option>
                                    <option value="3">Paper 3</option>
                                </select></td>
                        </tr>                         
                </table>
                <div id="error"></div>
                <div><input type="submit" value="Next" size="5" id="next"/></div>
            </form>
        </div>
        </center>
        
        <div class="copyright">Copyright © 2016 by Avanthi Inst of Engg & Tech. All Rights Reserved.</div>
    
    </body>
</html>
