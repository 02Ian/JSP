<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
String address=request.getParameter("address");
String phone_no=request.getParameter("phone_no");
String blood_group=request.getParameter("blood_group");
String hb=request.getParameter("hb");
String wbc=request.getParameter("wbc");

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/blood", "root", "");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into report(fname,lname,address,phone_no,blood_group,hb,wbc)values('"+fname+"','"+lname+"','"+address+"','"+phone_no+"','"+blood_group+"','"+hb+"','"+wbc+"')");
out.println("Data is successfully inserted!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>