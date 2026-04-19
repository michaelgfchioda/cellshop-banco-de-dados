<?php
    // Conectando com meu Banco de Dados
    include ("conexao.php");

    $sql_query_cliente_cartao = "SELECT
                                tb_cliente.id_cliente,
                                tb_cliente.nome,
                                tb_cliente.cpf,
                                tb_venda.id_venda,
                                tb_venda.data_venda,
                                tb_pagamento.id_pagamento,
                                tb_pagamento.forma_pagamento,
                                tb_pagamento.valor_pago,
                                tb_pagamento.parcelas
                                FROM (tb_cliente JOIN tb_venda) JOIN tb_pagamento
                                ON tb_cliente.id_cliente = tb_venda.id_cliente
                                WHERE tb_pagamento.forma_pagamento = 'cartao'
                                ORDER BY id_venda ASC";
    
    $resultado6 = mysqli_query($conexao, $sql_query_cliente_cartao);

    if (mysqli_num_rows($resultado6) > 0) {
        $linhas6 = mysqli_fetch_assoc($resultado6);

        while ($linhas6 != NULL || $linhas6 > 0) {
            echo "<p>";
            echo "<strong> id_cliente </strong>" .$linhas6['id_cliente'];
            echo "<br> <strong> nome: </strong>" .$linhas6['nome'];
            echo "<br> <strong> cpf: </strong>" .$linhas6['cpf'];
            echo "<br> <strong> id_venda: </strong>" .$linhas6['id_venda'];
            echo "<br> <strong> data_venda: </strong>" .$linhas6['data_venda'];
            echo "<br> <strong> id_pagamento: </strong>" .$linhas6['id_pagamento'];
            echo "<br> <strong> forma_pagamento: </strong>" .$linhas6['forma_pagamento'];
            echo "<br> <strong> valor_pago: </strong>" .$linhas6['valor_pago'];
            echo "<br> <strong> parcelas: </strong>" .$linhas6['parcelas'];
            echo "</p> <hr>";

            $linhas6 = mysqli_fetch_assoc($resultado6);
        }
    } else {
        die ("<p> Nenhum pagamento via cartão encontrado. </p>");
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

        <title> Pagamento em Cartao - CellShop </title>
    </head>
    
    

</html>