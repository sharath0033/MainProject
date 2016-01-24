<%-- 
    Document   : exam1
    Created on : 20 Jan, 2016, 8:18:26 PM
    Author     : Emin3M
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Exam Paper-I</title>
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
                font-size: 20px;
                margin-top: 20px;
            }
            
            #details{
                padding:5px 10px 5px 5px;
            }
            
            #next{
                padding-left: 20px;
                padding-right: 20px;
                padding-top: 5px;
                padding-bottom: 5px;
                margin-top: 20px;
            }
            
            .question{
                font-weight: bold;
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
                width: auto;
                padding: 10px;
                bottom: 0;
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
                    <a href="../ui/subjectpage.jsp">
                    <img id="bakimg" src="../pics/backbutton.png" alt="Back button" height="55" width="55"></a>
        </div>
        
        <div class="logout">
                    <a href="../home.html">
                    <img id="logoutimg" src="../pics/logout.png" alt="Logout button" height="55" width="55"></a>
        </div>
        
        <center>
        <div><h1><u>Exam Paper-I</u></h1></div>
        
        <div class="content">
            <form action="../logic/exam1code.jsp" method="POST" name="exam1">
                <%
                    String uid = session.getAttribute("userId").toString();
                    String sid=request.getParameter("subid");
                %>
                <table border="0" cellpadding="30">
                    <tr>
                        <td><b>Registration ID : </b><span><%=uid%></span></td>
                        <td><b>Exam Paper ID : </b><span><%=sid%></span></td>
                    </tr>
                </table>
                    
                    <div style="margin:10px"><b>Answer all Questions, there is no Negative marking. Each Question carries 1 Mark.</b></div>
            
                <table border="0" cellspacing="10">    
                    <tr>
                       <td><p class="question">1. Who is the father of the Computer?</p></td>
                   </tr>    
                    <tr>
                        <td>A.  <input type="radio" name="1q" value="a" />Charles Babbage</td>
                        <td>B.  <input type="radio" name="1q" value="b" />Dennis Ritchie</td>
                    </tr>
                    <tr>
                        <td>C.  <input type="radio" name="1q" value="c" />Louis Tomlinson</td>
                        <td>D.  <input type="radio" name="1q" value="d" />E Balagurusamy</td>
                    </tr>
                
               
                    <tr>
                        <td><p class="question">2. What is ETL abbreviation?</p></td>
                    </tr>
                    <tr>
                        <td>A.  <input type="radio" name="2q" value="a" />Transformation Extraction & Loading</td>
                        <td>B.  <input type="radio" name="2q" value="b" />Extraction Transformation & Loading</td>
                    </tr>
                    <tr>
                        <td>C.  <input type="radio" name="2q" value="c" />Execution Transform & Load</td>
                        <td>D.  <input type="radio" name="2q" value="d" />Execute Translator & Loader</td>
                    </tr>
                 
                
                    <tr>
                        <td><p class="question">3. What is CRC?</p></td>
                    </tr>
                    <tr>
                        <td>A.  <input type="radio" name="3q" value="a" />Cyclic Redundancy Check</td>
                        <td>B.  <input type="radio" name="3q" value="b" /> Classes Collaboration Rotate</td>
                    </tr>
                    <tr><td>C.  <input type="radio" name="3q" value="c" />Classes Rotation Collaboration</td>
                        <td>D.  <input type="radio" name="3q" value="d" />Class Rotate Collaborate</td>
                    </tr>
                  
                
                    <tr>
                        <td><p class="question">4. What is the abbreviation of ASP?</p></td>
                    </tr>
                    <tr>
                        <td>A.  <input type="radio" name="4q" value="a" />Action Service Pack</td>
                        <td>B.  <input type="radio" name="4q" value="b" />Activator Server Page</td>
                    </tr>
                    <tr>
                        <td>C.  <input type="radio" name="4q" value="c" />Active Service Page</td>
                        <td>D.  <input type="radio" name="4q" value="d" />Active Server Page</td>
                    </tr>
                  
               
                    <tr>
                        <td><p class="question">5. What is Analysis?</p></td>
                    </tr>
                    <tr>
                        <td>A.  <input type="radio" name="5q" value="a" />Decision analysis</td>
                        <td>B.  <input type="radio" name="5q" value="b" />Decision support</td>
                    </tr>    
                    <tr>
                        <td>C.  <input type="radio" name="5q" value="c" />Decision making</td>
                        <td>D.  <input type="radio" name="5q" value="d" />Designing</td>
                    </tr>
                
                
                    <tr>
                        <td><p class="question">6. Who is the Developer of C++?</p></td>
                    </tr>
                    <tr>
                        <td>A.  <input type="radio" name="6q" value="a" />BJ Stroustrup</td>
                        <td>B.  <input type="radio" name="6q" value="b" />Dennis Ritchie</td>
                    </tr>
                    <tr>
                        <td>C.  <input type="radio" name="6q" value="c" />Veera</td>
                        <td>D.  <input type="radio" name="6q" value="d" />Franklin</td>
                    </tr>
                  
                
                    <tr>
                        <td><p class="question">7. What is the Platform independent programming language?</p></td>
                    </tr>
                    <tr>
                        <td>A.  <input type="radio" name="7q" value="a" />C</td>
                        <td>B.  <input type="radio" name="7q" value="b" />Java</td>
                    </tr>
                    <tr>
                        <td>C.  <input type="radio" name="7q" value="c" />Pascal</td>
                        <td>D.  <input type="radio" name="7q" value="d" />C++</td>
                    </tr>
                
                
                    <tr>
                        <td><p class="question">8. What support the object oriented programming language?</p></td>
                    </tr>
                    <tr>
                        <td>A.  <input type="radio" name="8q" value="a" />C++, Java</td>
                        <td>B.  <input type="radio" name="8q" value="b" />C, C++</td>
                    </tr>
                    <tr>
                        <td>C.  <input type="radio" name="8q" value="c" />Java, C</td>
                        <td>D.  <input type="radio" name="8q" value="d" />C, Cobol</td>
                    </tr> 
                
              
                    <tr>
                        <td><p class="question">9. What is the abbreviation of DSS?</p></td>
                    </tr>
                    <tr>
                        <td>A.  <input type="radio" name="9q" value="a" />Development Support System</td>
                        <td>B.  <input type="radio" name="9q" value="b" />Decision Space System</td>
                    </tr>
                    <tr>
                        <td>C.  <input type="radio" name="9q" value="c" />Design Space System</td>
                        <td>D.  <input type="radio" name="9q" value="d" />Decision Support System</td>
                    </tr> 
                
                
                    <tr>
                        <td><p class="question">10. How many types of Decisions are there?</p></td>
                    </tr>
                    <tr>
                        <td>A.  <input type="radio" name="10q" value="a" />5</td>
                        <td>B.  <input type="radio" name="10q" value="b" />4</td>
                    </tr>
                    <tr>
                        <td>C.  <input type="radio" name="10q" value="c" />3</td>
                        <td>D.  <input type="radio" name="10q" value="d" />1</td>
                    </tr>
                </table>
                      <span><input type="submit" value="Submit" id="next"></span>
            </form>
        </div>
        <div class="copyright">Copyright © 2016 by Avanthi Inst of Engg & Tech. All Rights Reserved.</div>
    </body>
</html>