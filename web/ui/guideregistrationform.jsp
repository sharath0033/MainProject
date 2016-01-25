<%-- 
    Document   : guideregistration
    Created on : 25 Jan, 2016, 8:40:56 AM
    Author     : Emin3M
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page language="java" import="java.sql.*"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Guide Registration</title> 
        <script type="Text/Javascript">
        function validation(form){
            if(document.guideregform.fname.value===""){
                document.getElementById('error').innerHTML = "Please enter First Name";
                guideregform.fname.focus();
                return(false);
            }
            
            if(document.guideregform.lname.value===""){
                document.getElementById('error').innerHTML = "Please enter Last Name";
                guideregform.lname.focus();
                return(false);
            }
            
            if(document.guideregform.phone.value===""){
                document.getElementById('error').innerHTML = "Please enter Mobile No";
                guideregform.phone.focus();
                return(false);
            }
            
            if(document.guideregform.emailid.value===""){
                document.getElementById('error').innerHTML = "Email ID is mandatory";
                guideregform.emailid.focus();
                return(false);
            }
            
            else{
                return(true);
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
            
            .left{
                float: right;
            }
            
            .right{
                width: 100%;
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
        <% 
            try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","eminem");
                Statement st=cn.createStatement();
                st.executeUpdate("CREATE TABLE IF NOT EXISTS project.guideregister (  Registration_ID VARCHAR(10),  First_Name VARCHAR(30),  Last_Name VARCHAR(30),  Mobile_No VARCHAR(10),  Email_ID VARCHAR(40),  PRIMARY KEY (Registration_ID),  UNIQUE INDEX Registration_ID_UNIQUE (Registration_ID ASC),  UNIQUE INDEX Email_ID_UNIQUE (Email_ID ASC),  UNIQUE INDEX Mobile_No_UNIQUE (Mobile_No ASC))");
                ResultSet rs=st.executeQuery("SELECT COUNT(*) FROM guideregister");
                while(rs.next()){
                int id=Integer.parseInt(rs.getString(1));
                id++;%>

        <div class="header">
            <div class="home">
                <a href="../home.html"><img src="../pics/logo.png" alt="Home page" ></a>
            </div>
            <div class="title">
                <h1><span class="update" style="font-size:140%;">STUDENT  PROJECT  ALLOCATION</span><span cass="update" style="font-size:70%;"> & MANAGEMENT</span></h1>
            </div>l
        </div>
        
        <div class="back">
            <a href="../ui/catalogprofessor.jsp">
            <img id="bakimg" src="../pics/backbutton.png" alt="Back button" height="55" width="55"></a>
        </div>
        
        <div class="content">
    
            <center>
            <div style="padding-right:40px"><h1><u>Internal Guide Registration Form</u></h1></div>
            <h3><marquee><i>Fill in the Details to Register</i></marquee></h3>
            <form method=post name="guideregform" action="../logic/guideregistration.jsp" onsubmit="return validation(this)">
                <table border="0" cellpadding="10">
                    <tr>
                        <td class="left"><b>Registration ID :</b></td>
                        <td><input type="text" style="background-color:#eeeeee;font-weight: bold;" name="htno" value="CSE<%=id%>" class="right" readonly/></td>
                    </tr>
                    <%}%>
                      
                    <tr>
                        <td class="left"><b>First Name :</b></td>
                        <td><input type="text" name="fname" value="" class="right"/></td>
                    </tr>
                      
                    <tr>
                        <td class="left"><b>Last Name :</b></td>
                        <td><input type="text" name="lname" value="" class="right"/></td>
                    </tr>
                       
                    <tr>
                        <td class="left"><b>Mobile No :</b></td>
                        <td><input type="text" name="phone" value="" maxlength="10" class="right"/></td>
                    </tr>
                      
                    <tr>
                        <td class="left"><b>Email ID :</b></td>
                        <td><input type="text" name="emailid" value="" class="right"/></td>
                    </tr>
                      
                </table>  
                   
                <div id="error"></div>
                      
                <table border="0">
                    <tr>
                        <td style="padding-right:50px"><input type="reset" value="Reset"/></td>
                        <td style="padding-left:40px"><input type="submit" value="Register"/></td>
                    </tr>
                </table>
            </form>
            </center>
        </div>
        
        <div class="copyright">Copyright © 2016 by Avanthi Inst of Engg & Tech. All Rights Reserved.</div>
        <%}
            catch(Exception e){
                out.println("Exception e"+e);  
            }
        %>
        
    </body>
</html>

