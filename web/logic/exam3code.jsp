<%-- 
    Document   : exam3code
    Created on : 24 Jan, 2016, 2:55:52 AM
    Author     : Emin3M
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Exam 3 Code</title>
    </head>
    <body>
    <%
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","eminem");
            Statement st=cn.createStatement();
            st.executeUpdate("CREATE TABLE IF NOT EXISTS project.examanswers (Q_No INT, answer VARCHAR(2), PRIMARY KEY (Q_No), UNIQUE INDEX Q_No_UNIQUE (Q_No ASC))");
            st.executeUpdate("REPLACE INTO project.examanswers VALUES(1,'a')");
            st.executeUpdate("REPLACE INTO project.examanswers VALUES(2,'b')");
            st.executeUpdate("REPLACE INTO project.examanswers VALUES(3,'a')");
            st.executeUpdate("REPLACE INTO project.examanswers VALUES(4,'d')");
            st.executeUpdate("REPLACE INTO project.examanswers VALUES(5,'c')");
            st.executeUpdate("REPLACE INTO project.examanswers VALUES(6,'a')");
            st.executeUpdate("REPLACE INTO project.examanswers VALUES(7,'b')");
            st.executeUpdate("REPLACE INTO project.examanswers VALUES(8,'a')");
            st.executeUpdate("REPLACE INTO project.examanswers VALUES(9,'d')");
            st.executeUpdate("REPLACE INTO project.examanswers VALUES(10,'a')");
            st.executeUpdate("CREATE TABLE IF NOT EXISTS project.resultstudent (Registration_ID VARCHAR(10), Count INT, Subject_ID INT, Grade VARCHAR(2), PRIMARY KEY (Registration_ID), UNIQUE INDEX Registration_ID_UNIQUE (Registration_ID ASC))");
            ResultSet rs=st.executeQuery("SELECT * FROM examanswers");
            String a[]=new String[15];
            String b[]=new String[15];
            String grade;
            String uid = session.getAttribute("userId").toString();
            int i,j,cnt=0,sid=3;
            for(i=1;i<=10;i++){
		a[i]=(request.getParameter(i+"q"));
            }         
            i=1;
            j=0;
            while(rs.next()){
                b[j]=rs.getString(2);
                if(a[i].equals(b[j])){
                    cnt++;
                }
                i++;
                j++;
            }
            if(cnt>=7){ 
                grade="A";
            } 
            else if((cnt<7)&&(cnt>=4)){  
                grade="B";
            }
            else{
                grade="C";  
            }  
            String qry= "INSERT INTO resultstudent VALUES('"+uid+"',"+cnt+","+sid+",'"+grade+"')";
            if(st.executeUpdate(qry)>0){%>  
                <jsp:forward page="../ui/messageexam.jsp"/>
            <%}
            else{%>
                <jsp:forward page="../ui/messageexamerror.jsp?p1=3"/>
            <%}
        }
        catch(Exception e){
            out.println("error at"+e);
        }
    %>
    </body>
</html>