<html>
<head>
<title>Calcula IMC - JSP</title>

<style>
form[role=moldura] {
	color: #5d5d5d;
	background: #F0F0E8;
	padding: 25px;
	border-radius: 15px;
	-moz-border-radius: 15 px;
	-webkit-border-radius: 15px;
}
</style>
</head>
<meta charset="utf-8">
<link href="bootstrap/css/bootstrapcerulean.min.css" rel="stylesheet">
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-4"></div>
			<div class="col-md-4">
				<br>
				<form role="moldura" class="form-horizontal">
				<fieldset>
					<div align="center">
							<h3>Calcula IMC - JSP</h3>
					</div>
					<div class="form-group">
						<label class="col-md-3 control-label" for="peso">Peso</label>
						<div class="col-md-6">
							<input id="peso" name="peso" placeholder="Informe o peso"
								class="form-control input-md" type="text">

						</div>
					</div>

					<!-- Text input-->
					<div class="form-group">
						<label class="col-md-3 control-label" for="altura">Altura</label>
						<div class="col-md-6">
							<input id="altura" name="altura" placeholder="Informe a altura"
								class="form-control input-md" type="text">

						</div>
					</div>

					<!-- Select Basic -->
					<div class="form-group">
						<label class="col-md-3 control-label" for="sexo">Sexo</label>
						<div class="col-md-5">
							<select id="sexo" name="sexo" class="form-control">
								<option value="" disabled selected>Selecionar</option>
								<option value="F">Feminino</option>
								<option value="M">Masculino</option>
							</select>
						</div>
					</div>

					<!-- Button -->
					<div class="form-group">
						<label class="col-md-3 control-label" for=""></label>
						<div class="col-md-3">
							<button id="bt" name="bt" class="btn btn-info">Calcular</button>
						</div>
					</div>

					<%
						float peso = 0;
						float altura = 0;
						String sexo = "";
						String msg = "";
						double result = 0;

						try {

							peso = Float.parseFloat(request.getParameter("peso"));
							altura = Float.parseFloat(request.getParameter("altura"));
							sexo = request.getParameter("sexo");

						} catch (NullPointerException npe) {
						}

						catch (NumberFormatException nfe) {
						}

						result = peso / (Math.pow(altura, 2));

								if (sexo.toUpperCase().equals("F")) {
									if (result < 19.1) {
										msg = "Abaixo do Peso";
									} else if (result >= 19.1 && result <= 25.8) {
										msg = "Peso Ideal";
									} else if (result >= 25.9 && result <= 27.3) {
										msg = "Pouco Acima do Peso";
									} else if (result >= 27.4 && result <= 32.3) {
										msg = "Acima do Peso";
									} else if (result >= 32.4) {
										msg = "Obesidade";
									}

								} else if (sexo.toUpperCase().equals("M")) {
									if (result < 20.7) {
										msg = "Abaixo do Peso";
									} else if (result >= 20.7 && result <= 26.4) {
										msg = "Peso Ideal";
									} else if (result >= 26.5 && result <= 27.8) {
										msg = "Pouco Acima do Peso";
									} else if (result >= 27.9 && result <= 31.1) {
										msg = "Acima do Peso";
									} else if (result >= 31.2) {
										msg = "Obesidade";
									}
								}
							%>
					</fieldset>
				</form>
			</div>
		</div>
	</div>
	<script>
			var mostra_resultados = "<%=msg%>";
			alert(mostra_resultados);
	</script>
</body>
</html>
