<?php
	// Criando conexão com meu Banco de Dados
	$servidor = "34.237.81.165:3306";
	$usuario = "michaelchioda";
	$senha = "MichaelgfChioda1818@";
	$banco = "DB_michael_chioda";

	$conexao = mysqli_connect($servidor, $usuario, $senha, $banco);
	
	if (!$conexao) {
		die("Erro ao tentar se conectar ao Banco de Dados: ". mysqli_connect_error());
	}
?>