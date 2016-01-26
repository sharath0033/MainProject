<%-- 
    Document   : projectstudentform
    Created on : 25 Jan, 2016, 3:34:38 PM
    Author     : Emin3M
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page language="java" import="java.sql.*"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Project Details</title> 
        <script type="Text/Javascript">
        function validation(form){
            
            if(document.projectform.title.value===""){
                document.getElementById('error').innerHTML = "Project Title field should not be empty";
                projectform.title.focus();
                return(false);
            }
            
            if(document.projectform.frntend.value===""){
                document.getElementById('error').innerHTML = "Front End is mandatory";
                projectform.frntend.focus();
                return(false);
            }
            
            if(document.projectform.backend.value===""){
                document.getElementById('error').innerHTML = "Back End is mandatory";
                projectform.backend.focus();
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
            
            .logout{
                margin: 10px;
                float: right;
            }
            
            .content{
                font-size: 22px;
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
                width: 100%;
                padding: 10px;
                bottom: 0;
                position: fixed;
            }
    </style>
    </head>
    <%
        String uid = session.getAttribute("userId").toString();
    %>
    <body>
        <% 
            try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","eminem");
                Statement st=cn.createStatement();
                Statement st1=cn.createStatement();
                Statement st2=cn.createStatement();
                Statement st3=cn.createStatement();
                ResultSet rs=st.executeQuery("SELECT * FROM projectregister WHERE Team_Leader='"+uid+"' OR Member_2='"+uid+"' OR Member_3='"+uid+"' OR Member_4='"+uid+"'");
                ResultSet rs1=st1.executeQuery("SELECT * FROM projectregister WHERE Team_Leader='"+uid+"' AND Project_Title='null'");
                ResultSet rs2=st2.executeQuery("SELECT * FROM projectregister WHERE Team_Leader='"+uid+"' OR Member_2='"+uid+"' OR Member_3='"+uid+"' OR Member_4='"+uid+"'");
                ResultSet rs3=st3.executeQuery("SELECT * FROM projectregister WHERE Team_Leader='"+uid+"' OR Member_2='"+uid+"' OR Member_3='"+uid+"' OR Member_4='"+uid+"'");
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
            <a href="../ui/catalogstudent.jsp">
            <img id="bakimg" src="../pics/backbutton.png" alt="Back button" height="55" width="55"></a>
        </div>
        
        <div class="logout">
            <a href="../home.html">
            <img id="logoutimg" src="../pics/logout.png" alt="Logout button" height="55" width="55"></a>
        </div>
        
    <center>
        <div><h1><u>Project Team Details</u></h1></div>
        <div class="content">
            
                <table border="0" cellpadding="10">
                    <%while(rs.next()){%>        
                        <tr>
                            <td><b>🎲 - Team No :</b></td>
                            <td><%=rs.getString(1)%></td>
                        </tr>
                        <tr>
                            <td><b>✎ - Internal Guide :</b></td>
                             <td><%=rs.getString(2)%></td>
                        </tr>
                        <tr>
                            <td><b>👔 - Team Leader :</b></td>
                            <td><%=rs.getString(3)%></td>
                        </tr>
                        <tr>
                            <td><b>👦 - Member 2 :</b></td>
                            <td><div><%=rs.getString(4)%></div></td>
                        </tr>
                        <tr>
                            <td><b>👦 - Member 3 :</b></td>
                            <td><%=rs.getString(5)%></td>
                        </tr>
                        <tr>
                            <td><b>👦 - Member 4 :</b></td>
                            <td><%=rs.getString(6)%></td>
                        </tr>
                        <tr>
                            <td><b>⛳ - Remarks :</b></td>
                            <td><%=rs.getString(10)%></td>
                        </tr> 
                    <%}%>
                </table>
                    <%String a[]=new String[15];
                    while(rs3.next()){
                        a[0]=rs3.getString(7);
                    }
              
                if(rs1.next()){%>
                <div><h1 style="font-size:30px"><u>Project Details</u></h></div>
                <form method=post name="projectform" action="../logic/projectsubmission.jsp" onsubmit="return validation(this)">
                    <table style="font-size:20px" border="0" cellpadding="5">
                        <tr>
                            <td class="left"><b>Project Title :</b></td>
                            <td><input type="text" name="title" value="" maxlength="50" class="right"/></td>
                         </tr>
                      
                        <tr>
                            <td class="left"><b>Front End :</b></td>
                            <td><input type="text" name="frntend" value="" maxlength="30" class="right"/></td>
                        </tr>
                      
                        <tr>
                            <td class="left"><b>Back End :</b></td>
                            <td><input type="text" name="backend" value="" maxlength="30" class="right"/></td>
                        </tr>
                    </table>  
                   
                    <div id="error" style="font-size:17px"></div>
                      
                    <table border="0">
                        <tr>
                            <td style="padding-right:50px"><input style="padding-left:10px;padding-right:10px;padding-top:5px;padding-bottom:5px" type="reset" value="Reset"/></td>
                            <td style="padding-left:40px"><input style="padding-left:10px;padding-right:10px;padding-top:5px;padding-bottom:5px" type="submit" value="Submit"/></td>
                        </tr>
                    </table>
                </form>
                <%}
                else if(a[0].equals("null"))
                {%>
                    <div style="padding-top:30px;font-weight: bold">Project Details haven't been submitted yet.</div>
                <%}
                else{
                    while(rs2.next()){%>
                    <div><h1 style="font-size:28px;padding-top: 20px"><u>Project Details</u></h></div>
                        <table border="0" cellpadding="10" cellspacing="10">
                            <tr>
                                <td><b>📅 - Project Title :</b></td>
                                <td><%=rs2.getString(7)%></td>
                            </tr>
                            <tr>
                                <td><b>📺 - Front End :</b></td>
                                <td><%=rs2.getString(8)%></td>
                            </tr>
                            <tr>
                                <td><b>🖥 - Back End :</b></td>
                                <td><%=rs2.getString(9)%></td>
                            </tr>
                        </table>
                <%}
            }%>  
        </div>
        </center>
    
    <div class="copyright">Copyright © 2016 by Avanthi Inst of Engg & Tech. All Rights Reserved.</div>
        <%}
            catch(Exception e){
                out.println("Exception e"+e);  
            }
        %>
    </body>
</html>

