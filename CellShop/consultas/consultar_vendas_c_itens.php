<?php
    // Conectando com meu Banco de Dados
    include("conexao.php");

    $sql_query_vendas_c_itens = "SELECT
                                tb_venda.id_venda,
                                tb_venda.data_venda,
                                tb_ItemVenda.id_item,
                                tb_ItemVenda.quantidade,
                                tb_ItemVenda.subtotal
                                FROM tb_venda JOIN tb_ItemVenda
                                ON tb_venda.id_venda = tb_ItemVenda.id_venda
                                WHERE tb_venda.data_venda > '2023-12-31' AND tb_venda.data_venda < '2025-01-01'
                                ORDER BY tb_venda.data_venda DESC;";
    
    $resultado3 = mysqli_query($conexao, $sql_query_vendas_c_itens);

    if(mysqli_num_rows($resultado3) > 0) {
        $linhas3 = mysqli_fetch_assoc($resultado3);

        while ($linhas3 != NULL || $linhas3 > 0) {
            echo "<p>";
            echo "<strong> id_venda: </strong>" .$linhas3['id_venda'];
            echo "<br> <strong> data_venda: </strong>" .$linhas3['data_venda'];
            echo "<br> <strong> id_item: </strong>" .$linhas3['id_item'];
            echo "<br> <strong> quantidade: </strong>" .$linhas3['quantidade'];
            echo "<br> <strong> subtotal: </strong>" .$linhas3['subtotal'];
            echo "</p> <hr>";

            $linhas3 = mysqli_fetch_assoc($resultado3);
        }
    } else {
        die ("<p> Nenhuma venda encontrada no período especificado. </p>");
    }

    // Fechando a conexão com meu Banco de Dados
    mysqli_close($conexao);
?>

<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="stylesheet" href="consultas.css">

        <title> Vendas em 2024 - CellShop </title>
    </head>
    
    

</html>