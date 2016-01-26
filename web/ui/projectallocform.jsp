<%-- 
    Document   : projectallocform
    Created on : 25 Jan, 2016, 3:32:09 PM
    Author     : Emin3M
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page language="java" import="java.sql.*"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Project Allocation</title> 
        <script type="Text/Javascript">
        function validation(form){
            if(document.projectform.guide.value===""){
                document.getElementById('error').innerHTML = "Please Select Internal Guide";
                projectform.guide.focus();
                return(false);
            }
            
            if(document.projectform.tml.value===""){
                document.getElementById('error').innerHTML = "Team Leader is Mandatory";
                projectform.tml.focus();
                return(false);
            }
            
            if(document.projectform.mem2.value===""){
                document.getElementById('error').innerHTML = "Please Select B group Team Member";
                projectform.mem2.focus();
                return(false);
            }
            
            if(document.projectform.mem3.value===""){
                document.getElementById('error').innerHTML = "Please Select C group Team Member";
                projectform.mem3.focus();
                return(false);
            }
            
            if(document.projectform.remark.value===""){
                document.getElementById('error').innerHTML = "Please enter Remarks";
                projectform.remark.focus();
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
                padding:5px;
                padding-bottom: 60px;
            }
            
            .logout{
                margin: 10px;
                float: right;
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
                Statement st1=cn.createStatement();
                Statement st2=cn.createStatement();
                Statement st3=cn.createStatement();
                Statement st4=cn.createStatement();
                st.executeUpdate("CREATE TABLE IF NOT EXISTS project.projectregister (  Team_ID VARCHAR(5),  Internal_Guide VARCHAR(10),  Team_Leader VARCHAR(10),  Member_2 VARCHAR(10),  Member_3 VARCHAR(10),  Member_4 VARCHAR(10),  Project_Title VARCHAR(50),  Front_End VARCHAR(30),  Back_End VARCHAR(30),  Remarks VARCHAR(50),  PRIMARY KEY (Team_ID),  UNIQUE INDEX Team_ID_UNIQUE (Team_ID ASC),  UNIQUE INDEX Team_Leader_UNIQUE (Team_Leader ASC),  UNIQUE INDEX Member_2_UNIQUE (Member_2 ASC),  UNIQUE INDEX Member_3_UNIQUE (Member_3 ASC),  UNIQUE INDEX Member_4_UNIQUE (Member_4 ASC),  UNIQUE INDEX Project_Title_UNIQUE (Project_Title ASC))");
                ResultSet rs=st.executeQuery("SELECT COUNT(*) FROM projectregister");
                ResultSet rs1=st1.executeQuery("SELECT Guide_ID FROM guideregister");
                ResultSet rs2=st2.executeQuery("SELECT Registration_ID FROM resultstudent WHERE Grade='A'");
                ResultSet rs3=st3.executeQuery("SELECT Registration_ID FROM resultstudent WHERE Grade='B'");
                ResultSet rs4=st4.executeQuery("SELECT Registration_ID FROM resultstudent WHERE Grade='C'");
                %>

        <div class="header">
            <div class="home">
                <a href="../home.html"><img src="../pics/logo.png" alt="Home page" ></a>
            </div>
            <div class="title">
                <h1><span class="update" style="font-size:140%;">STUDENT  PROJECT  ALLOCATION</span><span class="update" style="font-size:70%;"> & MANAGEMENT</span></h1>
            </div>
        </div>
        
        <div class="back">
            <a href="../ui/catalogprofessor.jsp">
            <img id="bakimg" src="../pics/backbutton.png" alt="Back button" height="55" width="55"></a>
        </div>
        
        <div class="logout">
            <a href="../home.html">
            <img id="logoutimg" src="../pics/logout.png" alt="Logout button" height="55" width="55"></a>
        </div>
        
        <div class="content">
    
            <center>
            <div><h1><u>Student Project Allocation Form</u></h1></div>
            <form method=post name="projectform" action="../logic/projectallocation.jsp" onsubmit="return validation(this)">
                <table border="0" cellpadding="10">
                    <tr>
                        <td class="left"><b>Team No :</b></td>
                       <% while(rs.next()){
                            int id=Integer.parseInt(rs.getString(1));
                            id++;%>
                        <td><input type="text" style="background-color:#eeeeee;font-weight: bold;" name="tno" value="<%=id%>" class="right" readonly/></td>
                        <%}%>
                    </tr>
                    <tr>
                        <td class="left"><b>Internal Guide :</b></td>
                        <td><select name="guide" class="right">
                                <option value="">Select Internal Guide</option>
                                <%while(rs1.next()){%> 
                                <option value="<%=rs1.getString(1)%>"><%=rs1.getString(1)%></option>
                                <%}%>
                            </select></td>
                    </tr> 
                    <tr>
                        <td class="left"><b>Team Leader :</b></td>
                        <td><select name="tml" class="right">
                                <option value="">Select Team Leader</option>
                                <%while(rs2.next()){%> 
                                <option value="<%=rs2.getString(1)%>"><%=rs2.getString(1)%></option>
                                <%}%>
                            </select></td>
                    </tr>
                      
                    <tr>
                        <td class="left"><b>Member 2 :</b></td>
                        <td><select name="mem2" class="right">
                                <option value="">Select B group Member</option>
                                <%while(rs3.next()){%> 
                                <option value="<%=rs3.getString(1)%>"><%=rs3.getString(1)%></option>
                                <%}%>
                            </select></td>
                    </tr>
                      
                    <tr>
                        <td class="left"><b>Member 3 :</b></td>
                        <td><select name="mem3" class="right">
                                <option value="">Select C group Member</option>
                                <%while(rs4.next()){%> 
                                <option value="<%=rs4.getString(1)%>"><%=rs4.getString(1)%></option>
                                <%}%>
                            </select></td>
                    </tr>
                      
                    <tr>
                        <td class="left"><b>Member 4 :</b></td>
                        <td><input type="text" name="mem4" value="" maxlength="10" placeholder="Optional" class="right"/></td>
                            </select></td>
                    </tr>
                       
                    <tr>
                        <td class="left"><b>Remarks :</b></td>
                        <td><input type="text" name="remark" value="" maxlength="50" class="right"/></td>
                    </tr>  
                </table>
                <div id="error"></div>
                      
                <table border="0">
                    <tr>
                        <td style="padding-right:50px"><input style="padding-left:10px;padding-right:10px;padding-top:5px;padding-bottom:5px;" type="reset" value="Reset"/></td>
                        <td style="padding-left:40px"><input style="padding-left:10px;padding-right:10px;padding-top:5px;padding-bottom:5px;" type="submit" value="Register"/></td>
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
