<%-- 
    Document   : studentregistrationform
    Created on : 18 Jan, 2016, 3:00:11 PM
    Author     : Emin3M
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page language="java" import="java.sql.*"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Registration</title> 
        <script type="Text/Javascript">
        function validation(form){
            if(document.stdregform.htno.value===""){
                document.getElementById('error').innerHTML = "HallTicket No should not be empty";
                stdregform.htno.focus();
                return false;
            }
            
            if(document.stdregform.fname.value===""){
                document.getElementById('error').innerHTML = "Please enter your First Name";
                stdregform.fname.focus();
                return(false);
            }
            
            if(document.stdregform.lname.value===""){
                document.getElementById('error').innerHTML = "Please enter your Last Name";
                stdregform.lname.focus();
                return(false);
            }
            
            if(document.stdregform.dob.value===""){
                document.getElementById('error').innerHTML = "Date Of Birth should not be empty";
                stdregform.dob.focus();
                return(false);
            }
            
            if(document.stdregform.branch.value===""){
                document.getElementById('error').innerHTML = "Please Select your Branch";
                stdregform.branch.focus();
                return(false);
            }
            
            if(document.stdregform.year.value===""){
                document.getElementById('error').innerHTML = "Please select Year of Study";
                stdregform.year.focus();
                return(false);
            }
            
            if(document.stdregform.phone.value===""){
                document.getElementById('error').innerHTML = "Please enter your Mobile No";
                stdregform.phone.focus();
                return(false);
            }
            
            if(document.stdregform.address.value===""){
                document.getElementById('error').innerHTML = "Address field should not be empty";
                stdregform.address.focus();
                return(false);
            }
            
            if(document.stdregform.emailid.value===""){
                document.getElementById('error').innerHTML = "Email ID is mandatory";
                stdregform.emailid.focus();
                return(false);
            }
            
            if(document.stdregform.password.value===""){
                document.getElementById('error').innerHTML = "Password field should not be empty";
                stdregform.password.focus();
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
            
            .content{
                padding-bottom: 60px;
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
                width: auto;
                padding: 10px;
                bottom: 0;
            }
    </style>
    </head>
    <body>
        <% 
            try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","eminem");
                Statement st=cn.createStatement();
                st.executeUpdate("CREATE TABLE IF NOT EXISTS project.register (  Registration_ID VARCHAR(10),  First_Name VARCHAR(30),  Last_Name VARCHAR(30),  DOB VARCHAR(10),  Gender VARCHAR(6),  Branch VARCHAR(5),  Year VARCHAR(8),  Mobile_No VARCHAR(10),  Address VARCHAR(80),  Email_ID VARCHAR(40),  Password VARCHAR(20),  PRIMARY KEY (Registration_ID),  UNIQUE INDEX Registration_ID_UNIQUE (Registration_ID ASC),  UNIQUE INDEX Email_ID_UNIQUE (Email_ID ASC),  UNIQUE INDEX Mobile_No_UNIQUE (Mobile_No ASC))");
            }
            catch(Exception e){
                out.println("Exception e"+e);  
            }
        %>

        <div class="header">
            <div class="home">
                <a href="../home.html"><img src="../pics/logo.png" alt="Home page" ></a>
            </div>
            <div class="title">
                <h1><span class="update" style="font-size:140%;">STUDENT  PROJECT  ALLOCATION</span><span cass="update" style="font-size:70%;"> & MANAGEMENT</span></h1>
            </div>
        </div>
        
        <div class="back">
            <a href="../ui/studentloginform.jsp">
            <img id="bakimg" src="../pics/backbutton.png" alt="Back button" height="55" width="55"></a>
        </div>
        
        <div class="content">
    
            <center>
            <div style="padding-right:40px"><h1><u>Student Registration Form</u></h1></div>
            <h3><marquee><i>Fill in the Details to Register</i></marquee></h3>
            <form method=post name="stdregform" action="../logic/studentregistration.jsp" onsubmit="return validation(this)">
                <table border="0" cellpadding="10">
                    <tr>
                        <td class="left"><b>HallTicket No :</b></td>
                        <td><input type="text" name="htno" maxlength="10" placeholder="12Q61A05XX" class="right"/> </td>
                    </tr>
                      
                    <tr>
                        <td class="left"><b>First Name :</b></td>
                        <td><input type="text" name="fname" value="" class="right"/></td>
                    </tr>
                      
                    <tr>
                        <td class="left"><b>Last Name :</b></td>
                        <td><input type="text" name="lname" value="" class="right"/></td>
                    </tr>
                      
                    <tr>
                        <td class="left"><b>Date Of Birth :</b></td>
                        <td><input type="text" name="dob" value="" maxlength="10" placeholder="DD/MM/YYYY" class="right"/></td>
                    </tr>
                      
                    <tr>
                        <td class="left"><b>Gender :</b></td>
                        <td><input type="radio" name="gender" value="Male" />Male
                                <span style="padding-left:15px">
                                    <input type="radio" name="gender" value="Female" />Female
                                </span></td>
                    </tr>
                      
                    <tr>
                        <td class="left"><b>Branch :</b></td>
                        <td><select name="branch" class="right">
                                <option value="">Select Branch</option>
                                <option value="CSE">CSE Branch</option>
                                <option value="ECE">ECE Branch</option>
                                <option value="EEE">EEE Branch</option>
                                <option value="MECH">MECH Branch</option>
                            </select></td>
                    </tr>
                      
                    <tr>
                        <td class="left"><b>Year of Study:</b></td>
                        <td><select name="year" class="right">
                                <option value="">Select Year</option>
                                <option value="3rd year">3rd year</option>
                                <option value="4th year">4th year</option>
                            </select></td>
                    </tr>
                       
                    <tr>
                        <td class="left"><b>Mobile No :</b></td>
                        <td><input type="text" name="phone" value="" maxlength="10" class="right"/></td>
                    </tr>
                       
                    <tr>
                        <td class="left"><b>Address :</b></td>
                        <td> <textarea name="address" value="" rows="4" class="right"></textarea></td>
                    </tr>
                      
                    <tr>
                        <td class="left"><b>Email ID :</b></td>
                        <td><input type="text" name="emailid" value="" class="right"/></td>
                    </tr>
                      
                    <tr>
                        <td class="left"><b>Password :</b></td>
                        <td><input type="password" name="password" value="" class="right"/></td>
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
        
    </body>
</html>
