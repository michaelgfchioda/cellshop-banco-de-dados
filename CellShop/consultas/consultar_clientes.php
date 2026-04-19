<?php
    include ("conexao.php");

    echo "<h1> Clientes - CellShop </h1>";
    echo "<dpstitulo> <hr> </dpstitulo>";

    $sql_query_clientes =   "SELECT *
                            FROM tb_cliente;";
    
    $resultado7 = mysqli_query($conexao, $sql_query_clientes);

    if (mysqli_num_rows($resultado7) > 0) {
        $linhas7 = mysqli_fetch_assoc($resultado7);

        while ($linhas7 != NULL || $linhas7 > 0) {
            echo "<p>";
            echo "<strong> id_cliente: </strong>" .$linhas7['id_cliente'];
            echo "<br> <strong> nome: </strong>" .$linhas7['nome'];
            echo "<br> <strong> cpf: </strong>" .$linhas7['cpf'];
            echo "<br> <strong> email: </strong>" .$linhas7['email'];
            echo "<br> <strong> telefone: </strong>" .$linhas7['telefone'];
            echo "</p> <hr>";
            
            $linhas7 = mysqli_fetch_assoc($resultado7);
        }
    } else {
        die ("<p> Nenhum cliente encontrado. </p>");
    }

    mysqli_close($conexao);
?>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="stylesheel" href="consultas.css">

        <title> Clientes - CellShop </title>
    </head>
</html>