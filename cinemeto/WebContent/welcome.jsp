<!DOCTYPE html>
<html>
<head>
	<title></title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="icon" href="https://dm2302files.storage.live.com/y4pkrQpL_axk9Qacc-re5xvMmf9EFe2UCWLOVJ5HASJ4_oMRimk6ndfndYb39ZnHiQ2WUMDq_8pBlaLXdjn8qX1QCtJgzpTytlU_H0tk1sFe8uYh8o1TMt6SmY4suGp1zKtpBLQWotHJc-HIbVgq1bwzKhkFZ86dDpWxlqv1KrLdCPSnt-1jqJG9aVxZVB3-o9g-HvmLsDjGSEOkxnMdELEwaH82B7WvF8WowjNl8x1n5I/9361logo_cine.ico?psid=1&width=1366&height=2048" />
	
</head>
<body>
	
	<%

	String nome = (String) session.getAttribute("nome");
	if(nome == null){
		response.sendRedirect("login.jsp");
	}else{
		out.print("Bem vindo, "+nome+"<br/>");
	}

	%>


	<div id="navegacao">
			<div id="area">
			<h1 id="logo"><span class="verde">Cine</span><span style="color: #FFF;">Metô</span></h1>
			<div id="menu"> 
				<a href="index.html">Home</a> 
				<a href="games.html">Movie</a>
				<a href="apps.html">Sing Up</a>
				<span style="border-left: 1px solid #FFF; padding: 5px; "><a href="eletronicos.html">Sing In</a></span>

			</div>
		</div>
		</div>


		<div class="geral">
			<div style="vertical-align: middle;">
				
				<h2 id="h2-Cadastro" style="margin-top: 40px; margin-left: "><span><img style="height: auto;width: 100px;" src="https://cdn2.iconfinder.com/data/icons/ios-7-icons/50/user_male2-512.png"></span>Olá ${message} Seja bem-vindo a sua Conta !!</h2>
			</div>
	</div>
	
	<div class="button_comprar">
		<button class="finalizar_compra" style="padding: 9px; margin: 9px; ">
		
			<a href="compra.jsp">Comprar Ingresso </a>
		</button>	
	</div>
	
	
		<button class="finalizar_compra" style="padding: 9px; margin: 9px; ">
			<a href="deslogar.jsp">Deslogar </a>
		</button>	

</body>

<footer>
    <small>Copyright - &copy;2019 by Go Tec</small>
</footer>
</html>
