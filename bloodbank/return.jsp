<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<html>
<head>
<title>Insert title here</title>
</head>
<link rel="stylesheet" type="text/css" href="ret.css">
<body>
</body>
<form method="post" action="" >
<table border="2" name="fat	">
<tr>
<th>ID</th>
<th>FIRST NAME</th>
<th>LAST NAME</th>
<th>ADDRESS</th>
<th>PHONE_NO</th>
<th>BLOOD_GROUP</th>
<th>HB</th>
<th>WBC</th>
</tr>
<%
try
{
Class.forName("com.mysql.jdbc.Driver");
String blood_group=request.getParameter("blood_group");
String query="select * from report where blood_group='"+blood_group+"'";
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/blood", "root", "");
Statement stmt=conn.createStatement();
ResultSet rs=stmt.executeQuery(query);
// out.print(query);
while(rs.next())
{

%>
<tr>
    <td><%=rs.getInt("id") %></td>
    <td><%=rs.getString("fname") %></td>
    <td><%=rs.getString("lname") %></td>
    <td><%=rs.getString("address") %></td>
    <td><%=rs.getString("phone_no") %></td>
    <td><%=rs.getString("blood_group") %></td>
    <td><%=rs.getInt("hb") %></td>
    <td><%=rs.getInt("wbc") %></td>
</tr>
        <%

}
%>
    </table>
    <%
    rs.close();
    stmt.close();
    conn.close();
    }
catch(Exception e)
{
    e.printStackTrace();
    }




%>

</form>
</html> 