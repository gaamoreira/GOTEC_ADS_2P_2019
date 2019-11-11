<%@ page import="java.sql.*"%>
<link rel="icon" href="https://dm2302files.storage.live.com/y4pkrQpL_axk9Qacc-re5xvMmf9EFe2UCWLOVJ5HASJ4_oMRimk6ndfndYb39ZnHiQ2WUMDq_8pBlaLXdjn8qX1QCtJgzpTytlU_H0tk1sFe8uYh8o1TMt6SmY4suGp1zKtpBLQWotHJc-HIbVgq1bwzKhkFZ86dDpWxlqv1KrLdCPSnt-1jqJG9aVxZVB3-o9g-HvmLsDjGSEOkxnMdELEwaH82B7WvF8WowjNl8x1n5I/9361logo_cine.ico?psid=1&width=1366&height=2048" />

<%


String nome = request.getParameter("nome");
String password = request.getParameter("password");

if((!(nome.equals(null) || nome.equals("")) && !(password.equals(null) || password.equals("")))){
	
	
try{
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","SYSTEM","gabriel17");
	
	PreparedStatement ps = conn.prepareStatement("SELECT * FROM CLIENTE_CINE WHERE EMAIL=? AND PASSWORD=?");
	ps.setString(1, nome);
	ps.setString(2, password);
	int x = ps.executeUpdate();
	if(x != 0){
		out.print("Logado com sucesso!!");
		//request.getRequestDispatcher("welcome.jsp").forward(request, response);
		session.setAttribute("nome", nome);
		response.sendRedirect("welcome.jsp");
		
	}else{
		out.print("Não é uma conta válida");
		
	}
	
	
	
}catch(Exception e){
	out.print(e);
	
}

}else{
	out.print("Não é uma conta válida");


}


%>