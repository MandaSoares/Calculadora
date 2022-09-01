<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Calculadora2</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
	crossorigin="anonymous">
</head>
<body>

	<%
	float valor1 = Float.parseFloat(request.getParameter("valor1"));
	float valor2 = Float.parseFloat(request.getParameter("valor2"));
	int opcao = Integer.parseInt(request.getParameter("operacao"));
	float resultado = 0;

	switch (opcao) {
	case 1:
		resultado = valor1 + valor2;
		break;
	case 2:
		resultado = valor1 - valor2;
		break;
	case 3:
		resultado = valor1 * valor2;
		break;
	case 4:
		resultado = valor1 / valor2;
	}
	%>

	<div class="container">
		<div class="row">
			<div class="col align-self-start">
				<div class="card mb-5 bg-secondary text-white">
					<div class="card-body text-center">

						<h1>Calculo dos valores</h1>

					</div>
				</div>

				<div class= mb-3>Calculado com sucesso!</div>



				<div>
					Valor 1:
					<%=valor1%><br> Valor 2:
					<%=valor2%><br> Resultado:
					<%=resultado%>
				</div>

			</div>
		</div>
	</div>
</body>
</html>