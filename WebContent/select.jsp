<%@ page contentType="text/html;charset=euc-kr" pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<title>����Ŭ select ����</title>
</head>
<body>
	<%
	 String DB_URL = "jdbc:oracle:thin:@211.114.154.6:1521:ORCL";
	 String DB_USER = "jangis";
	 String DB_PASSWORD= "dlstn12";

	 Connection conn = null;
	 Statement stmt = null;
	 ResultSet rs = null;
	 String query = "select * from emp";

	 try {
		 
		  //Class.forName("com.mysql.jdbc.Driver"); // mysql �����
		  Class.forName("oracle.jdbc.driver.OracleDriver");
		  
		  // Connection ������
		  conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
		  
		  // Statement�� �غ�
		  stmt = conn.createStatement();
		  
		  // ���� ����
		  rs = stmt.executeQuery(query);

		  out.print("result: </br>");
		  String s;
		  while (rs.next()) 
		  {
			   out.println(rs.getString(1));
			   out.println(rs.getString(2));
			   out.println(rs.getString(3));
			   out.println(rs.getString(4));
			   out.println(rs.getString(5));
			   out.println(rs.getString(6));
			   out.println(rs.getString(7));
			   out.println(rs.getString(8));
			   out.println("<br>");
			}
		  
		  rs.close();
		  stmt.close();
	 } 
 catch(Exception e){
	  out.print("Exception Error...");
	  out.print(e.toString());
 }
 finally {
	 conn.close();
 }
%>
</body>
</html>

