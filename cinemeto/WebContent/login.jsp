<!DOCTYPE html>
<html>
<head>
	<title></title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="icon" href="https://dm2302files.storage.live.com/y4pkrQpL_axk9Qacc-re5xvMmf9EFe2UCWLOVJ5HASJ4_oMRimk6ndfndYb39ZnHiQ2WUMDq_8pBlaLXdjn8qX1QCtJgzpTytlU_H0tk1sFe8uYh8o1TMt6SmY4suGp1zKtpBLQWotHJc-HIbVgq1bwzKhkFZ86dDpWxlqv1KrLdCPSnt-1jqJG9aVxZVB3-o9g-HvmLsDjGSEOkxnMdELEwaH82B7WvF8WowjNl8x1n5I/9361logo_cine.ico?psid=1&width=1366&height=2048" />
	
</head>
<body class="content">

	<div id="navegacao">
		<div id="area">
			<h1 id="logo"><span class="verde">Cine</span><span style="color: #FFF;">Metô</span></h1>
			<div id="menu"> 
				<a href="principal.jsp">Home</a> 
				<a href="games.html">Movie</a>
				<a href="cadastro.jsp">Sing Up</a>
				<span style="border-left: 1px solid #FFF; padding: 5px; "><a href="login.jsp">Sing In</a></span>

			</div>
		</div>
	</div>
	

	<form action="connLogin.jsp" method="post" style="background: #FFF;">
		
	
		<div>
			<h2 id="h2">Sign in to your account</h2>
		</div>
			
			<div>
				<label for="nome">Login:</label>
				<input type="text" name="nome" id="nome" placeholder="Enter your login">
				
			</div>
			<div>
				<label for="password">Password:</label>
				<input type="password" name="password" id="password" placeholder="Type your password">
			</div>
			<div id="p">
				<a href="#" id="a">Forgot Password?</a>
			</div>
			<div>
				<button type="submit" name="submit" value="login" id="buttonLog"> Sign In</button>
			</div>

			<div>
				<div id="dividir">
					<div style="margin-left: 120px; position: relative; margin-top: 10px;">
						<h4>Don't have an account?</h4>
					</div>
					<div>
					
						<button type="submit" id="buttonCad" value="login">Sign Up</button>
					</div>
				</div>
				
			</div>
	</form>

</body>

<footer>
    <small>Copyright - &copy;2019 by Go Tec</small>
</footer>
</html>