<?php
    // Conectando com meu Banco de Dados
    include ("conexao.php");

    /*if (!$conexao) {
        die ("Erro ao conectar ao Banco de Dados: " . mysqli_connect_error());
    } else {
        echo "<p> Conexão bem-sucedida! </p> <br>";
    }*/

    echo "<h1> Produtos - CellShop </h1>";
    echo "<dpstitulo> <hr> </dpstitulo>";

    $sql_query_produto = "SELECT *
                          FROM tb_produto;";

    $resultado1 = mysqli_query($conexao, $sql_query_produto);

    if (mysqli_affected_rows($conexao) > 0) {
        $linhas1 = mysqli_fetch_assoc($resultado1);
                    
        while ($linhas1 != NULL || $linhas1 > 0) {
            echo "<p>";
            echo "<strong> id_produto: </strong>" . $linhas1['id_produto'];
            echo "<br> <strong> descricao: </strong>" .$linhas1['descricao'];
            echo "<br> <strong> preco: </strong>" .$linhas1['preco'];
            echo "<br> </p> <hr>";

            $linhas1 = mysqli_fetch_assoc($resultado1);
        }
    
    } else {
        echo "<p> Nenhum produto encontrado. </p>";
    }
    
    // Fechando a conexão com o Banco de Dados
    mysqli_close($conexao);
?>

<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="stylesheet" href="consultas.css">

        <title> Produtos - CellShop </title>
    </head>

</html>