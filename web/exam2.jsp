<%-- 
    Document   : exam2
    Created on : 20 Jan, 2016, 8:18:37 PM
    Author     : Emin3M
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Exam Paper-II</title>
        
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
                font-size: 22px;
                margin-top: 20px;
            }
            
            #next{
                padding-left: 20px;
                padding-right: 20px;
                padding-top: 5px;
                padding-bottom: 5px;
                margin-top: 20px;
            }
            
            
            #error{
                color: red;
                text-align: center;
                font-size: 18px;
                padding-top: 20px;
                padding-bottom: 10px;
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
        <div class="back">
                    <a href="studentloginform.jsp">
                    <img id="img" src="backbutton.png" alt="Back button" height="55" width="55"></a>
        </div>
        
        <div class="logout">
                    <a href="home.html">
                    <img id="img" src="logout.png" alt="Logout button" height="55" width="55"></a>
        </div>
        
        <div style="font-family: helvetica"><center><h1><u>Exam Paper-II</u></h1></</div>
        
        <div class="content">
            <form action="examcode2.jsp" method="POST" name="exam2">
       <%
           String uid = session.getAttribute("userId").toString();
           String sid=session.getAttribute("subid").toString();
       %>
                <table border="0" cellspacing="10">
                    <tr>
                          <td><b>Registration ID : </b><span><%=uid%></span></td>
                          <td><b>Exam Paper ID : </b><span><%=sid%></span></td>
                      </tr>
        <tbody style="padding-top:50px">
                <tr>
                       <td><p>1. Who is the father of the Computer?</p></td>
                   </tr>    
                <tr>
                    <td>A.  <input type="radio" name="1q" value="a" />Charles Babbage</td>
                    <td>B.  <input type="radio" name="1q" value="b" />Dennis Ritchie</td>
                </tr>
                  <tr><td>C.  <input type="radio" name="1q" value="c" />Louis Tomlinson</td>
                    <td>D.  <input type="radio" name="1q" value="d" />E Balagurusamy</td>
                  </tr>
                
               
                <tr>
                    <td><p>2. What is ETL abbreviation?</p></td>
                </tr>
                <tr>
                  <td>A.  <input type="radio" name="2q" value="a" />Transformation Extraction & Loading</td>
                    <td>B.  <input type="radio" name="2q" value="b" />Extraction Transformation & Loading</td>
                </tr>
                <tr><td>C.  <input type="radio" name="2q" value="c" />Execution Transform & Load</td>
                    <td>D.  <input type="radio" name="2q" value="d" />Execute Translator & Loader</td>
                </tr>
                 
                
                <tr>
                    <td><p>3. What is CRC?</p></td>
                </tr>
                <tr>
                    <td>A.  <input type="radio" name="3q" value="a" />Cyclic Redundancy Check</td>
                    <td>B.  <input type="radio" name="3q" value="b" /> Classes Collaboration Rotate</td>
                </tr>
                <tr><td>C.  <input type="radio" name="3q" value="c" />Classes Rotation Collaboration</td>
                    <td>D.  <input type="radio" name="3q" value="d" />Class Rotate Collaborate</td>
                </tr>
                  
                
                <tr>
                    <td><p>4. What is the abbreviation of ASP?</p></td>
                </tr>
                <tr>
                  <td>A.  <input type="radio" name="4q" value="a" />Action Service Pack</td>
                    <td>B.  <input type="radio" name="4q" value="b" />Activator Server Page</td>
                </tr>
                <tr><td>C.  <input type="radio" name="4q" value="c" />Active Service Page</td>
                    <td>D.  <input type="radio" name="4q" value="d" />Active Server Page</td>
                </tr>
                  
               
                <tr>
                    <td><p>5. What is Analysis?</p></td>
                </tr>
                <tr>
                    <td>A.  <input type="radio" name="5q" value="a" />Decision analysis</td>
                    <td>B.  <input type="radio" name="5q" value="b" />Decision support</td>
                </tr>
                    <td>C.  <input type="radio" name="5q" value="c" />Decision making</td>
                    <td>D.  <input type="radio" name="5q" value="d" />Designing</td>
                </tr>
                
                
                <tr>
                    <td><p>6. Who is the Developer of C++?</p></td>
                </tr>
                <tr>
                    <td>A.  <input type="radio" name="6q" value="a" />BJ Stroustrup</td>
                    <td>B.  <input type="radio" name="6q" value="b" />Dennis Ritchie</td>
                    </tr>
                <tr><td>C.  <input type="radio" name="6q" value="c" />Veera</td>
                    <td>D.  <input type="radio" name="6q" value="d" />Franklin</td>
                </tr>
                  
                
                <tr>
                    <td><p>7. What is the Platform independent programming language?</p></td>
                </tr>
                <tr>
                    <td>A.  <input type="radio" name="7q" value="a" />C</td>
                    <td>B.  <input type="radio" name="7q" value="b" />Java</td>
                    </tr>
                <tr><td>C.  <input type="radio" name="7q" value="c" />Pascal</td>
                    <td>D.  <input type="radio" name="7q" value="d" />C++</td>
                </tr>
                
                
                <tr>
                    <td><p>8. What support the object oriented programming language?</p></td>
                </tr>
                <tr>
                    <td>A.  <input type="radio" name="8q" value="a" />C++, Java</td>
                    <td>B.  <input type="radio" name="8q" value="b" />C, C++</td>
                    </tr>
                <tr><td>C.  <input type="radio" name="8q" value="c" />Java, C</td>
                    <td>D.  <input type="radio" name="8q" value="d" />C, Cobol</td>
                </tr> 
                
              
                <tr>
                    <td><p>9. What is the abbreviation of DSS?</p></td>
                </tr>
                <tr>
                      <td>A.  <input type="radio" name="9q" value="a" />Development Support System</td>
                    <td>B.  <input type="radio" name="9q" value="b" />Decision Space System</td>
                    </tr>
                <tr><td>C.  <input type="radio" name="9q" value="c" />Design Space System</td>
                    <td>D.  <input type="radio" name="9q" value="d" />Decision Support System</td>
                </tr> 
                
                
                <tr>
                    <td><p>10. How many types of Decisions are there?</p></td>
                </tr>
                <tr>
                    <td>A.  <input type="radio" name="10q" value="a" />5</td>
                    <td>B.  <input type="radio" name="10q" value="b" />4</td>
                    </tr>
                <tr><td>C.  <input type="radio" name="10q" value="c" />3</td>
                    <td>D.  <input type="radio" name="10q" value="d" />1</td>
                </tr>
                
            </tbody>
        </table>
                      <span style="padding-bottom: 50px;align:center;"><input type="submit" value="Submit" style="padding-left: 20px;
                padding-right: 20px;
                padding-top: 5px;
                padding-bottom: 5px;"></span>
            </form>
        </div>
        <div class="copyright">Copyright © 2016 by Avanthi Inst of Engg & Tech. All Rights Reserved.</div>
    </body>
</html>
