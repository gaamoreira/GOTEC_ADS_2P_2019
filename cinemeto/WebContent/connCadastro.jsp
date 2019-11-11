<%@ page import="java.sql.*"%>
<link rel="icon" href="https://dm2302files.storage.live.com/y4pkrQpL_axk9Qacc-re5xvMmf9EFe2UCWLOVJ5HASJ4_oMRimk6ndfndYb39ZnHiQ2WUMDq_8pBlaLXdjn8qX1QCtJgzpTytlU_H0tk1sFe8uYh8o1TMt6SmY4suGp1zKtpBLQWotHJc-HIbVgq1bwzKhkFZ86dDpWxlqv1KrLdCPSnt-1jqJG9aVxZVB3-o9g-HvmLsDjGSEOkxnMdELEwaH82B7WvF8WowjNl8x1n5I/9361logo_cine.ico?psid=1&width=1366&height=2048" />

<%

String name = request.getParameter("nome");
String lastName = request.getParameter("Sobrenome");
String rg = request.getParameter("rg");
String cpf = request.getParameter("cpf");
String phone = request.getParameter("tel");
String cep = request.getParameter("cep");
String email = request.getParameter("email");
String password = request.getParameter("password");

	
if(password != null){
	try{

		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","SYSTEM","gabriel17");
		PreparedStatement ps = conn.prepareStatement("INSERT INTO CLIENTE_CINE VALUES (?, ?, ?, ?, ?, ?, ?, ?)");
		ps.setString(1, name);
		ps.setString(2, lastName);
		ps.setString(3, rg);
		ps.setString(4, cpf);
		ps.setString(5, phone);
		ps.setString(6, cep);
		ps.setString(7, email);
		ps.setString(8, password);
		int x = ps.executeUpdate();
		if(x != 0){
			out.print("Conectado!!");
			
		}else{
			out.print("Error ao conectar");
		}
	}catch(Exception e){
		out.print(e);
	}
}else{
	out.print("Error ao conectar!!");
}
	
%>