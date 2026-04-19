<?php
    // Conectando com meu Banco de Dados
    include ("conexao.php");

    /*if (!$conexao) {
        die ("Não foi possível conectar ao Banco" .mysqli_error($conexao));
    } else {
        echo "<p> Conexão bem-sucedida! </p>";
    }*/
    
    echo "<h1> Vendas - CellShop </h1>";
    echo "<dpstitulo> <hr> </dpstitulo>";

    $sql_query_vendas = "SELECT *
                         FROM tb_venda;";

    $resultado2 = mysqli_query($conexao, $sql_query_vendas);

    if (mysqli_affected_rows($conexao) > 0) {
        $linhas2 = mysqli_fetch_assoc($resultado2);

        while ($linhas2 != NULL || $linhas2 > 0) {
            echo "<p>";
            echo "<strong> id_venda: </strong>" .$linhas2['id_venda'];
            echo "<br> <strong> data_venda: </strong>" .$linhas2['data_venda'];
            echo "<br> <strong> id_cliente: </strong>" .$linhas2['id_cliente'];
            echo "</p> <hr>";

            $linhas2 = mysqli_fetch_assoc($resultado2);
        }
    } else {
        die ("<p> Nenhuma venda encontrada. </p>");
    }

    // Fechando a conexão com meu Banco de Dados
    mysqli_close ($conexao);
?>

<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="stylesheet" href="consultas.css">

        <title> Vendas - CellShop </title>
    </head>
    
    

</html>