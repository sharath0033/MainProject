<%-- 
    Document   : studentlogin
    Created on : 18 Jan, 2016, 2:59:46 PM
    Author     : Emin3M
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.sql.*" session="true"%>
<%@ page language="java" import="java.io.*"%>
 <% 
              try{
                  Class.forName("com.mysql.jdbc.Driver");
                  Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","eminem");
                  Statement st=cn.createStatement();
                  st.executeUpdate("CREATE TABLE IF NOT EXISTS project.register (  Registration_ID VARCHAR(10),  First_Name VARCHAR(30),  Last_Name VARCHAR(30),  DOB VARCHAR(10),  Gender VARCHAR(6),  Branch VARCHAR(5),  Year VARCHAR(8),  Mobile_No VARCHAR(10),  Address VARCHAR(80),  Email_ID VARCHAR(40),  Password VARCHAR(20),  PRIMARY KEY (Registration_ID),  UNIQUE INDEX Registration_ID_UNIQUE (Registration_ID ASC),  UNIQUE INDEX Email_ID_UNIQUE (Email_ID ASC),  UNIQUE INDEX Mobile_No_UNIQUE (Mobile_No ASC))");
                  String uid=request.getParameter("txt1");
                  String pwd=request.getParameter("txt2");
                  ResultSet rs=st.executeQuery("select * from register where Registration_ID='"+uid+"' and Password='"+pwd+"'");
                        if(rs.next())
                             {    
                                out.println("Connection established"); 
                                session.setAttribute("userId",uid);
                                %>
                                <jsp:forward page="catalogstudent.jsp">
                                    <jsp:param name="uid" value="<%=uid%>"/>
                                </jsp:forward>
                                <%                        
                             }
                        else
                            {
                                %>                                 
                                    <jsp:forward page="errorlogin.jsp"/>
                                <%
                            }
                }
                         
                catch(Exception e){
                    out.println("exception is"+e);
                }
%>
