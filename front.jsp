<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="main.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor = #DCDCDC>
<form action="insert.jsp">
<center>
<h1>BLOOD DONATION REGISTRETION</h1>
<br>
  First name:<br> <input type="text" name="fname"><br>
  Last name:<br> <input type="text" name="lname"><br>
  Address: <br><input type="text" name="address"><br>
  Phone.no: <br><input type="tel" name="contactno"><br>
  Blood Group:<br> <select>
 				<option value="A">A</option>
  				<option value="A+">A+</option>
  				<option value="A-">A-</option>
  				<option value="B">B</option>
  				<option value="B+">B+</option>
  				<option value="B-">B-</option>
  				<option value="AB+">AB+</option>
  				<option value="AB-">AB-</option>
  				<option value="O+">O+</option>
  				<option value="O-">O-</option>
</select><br>
  HB rate <br><input type="number" name="hb"><br>
  WBC <br><input type="number" name="wbc"><br>
  <input type="submit" value="Submit">
</center>  
</form>
</body>
</html>