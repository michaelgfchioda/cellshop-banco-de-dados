<?php
    // Conectando com meu Banco de Dados
    include ("conexao.php");

    $sql_query_cliente_pix =    "SELECT
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
                                WHERE tb_pagamento.forma_pagamento = 'pix'
                                ORDER BY id_venda ASC;";
    
    $resultado4 = mysqli_query($conexao, $sql_query_cliente_pix);

    if (mysqli_num_rows($resultado4) > 0) {
        $linhas4 = mysqli_fetch_assoc(($resultado4));

        while ($linhas4 != NULL || $linhas4 > 0) {
            echo "<p>";
            echo "<strong> id_cliente: </strong>" .$linhas4['id_cliente'];
            echo "<br> <strong> nome: </strong>" .$linhas4['nome'];
            echo "<br> <strong> cpf: <strong>" .$linhas4['cpf'];
            echo "<br> <strong> id_venda: <strong>" .$linhas4['id_venda'];
            echo "<br> <strong> data_venda: </strong>" .$linhas4['data_venda'];
            echo "<br> <strong> id_pagamento: </strong>" .$linhas4['id_pagamento'];
            echo "<br> <strong> forma_pagamento: </strong>" .$linhas4['forma_pagamento'];
            echo "<br> <strong> valor_pago: </strong>" .$linhas4['valor_pago'];
            echo "<br> <strong> parcelas: </strong>" .$linhas4['parcelas'];
            echo "</p> <hr>";

            $linhas4 = mysqli_fetch_assoc($resultado4);
        }
    } else {
        die ("<p> Nenhum pagamento via Pix foi encontrado. </p>");
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

        <title> Pagamentos em Pix - CellShop </title>
    </head>
    
    

</html>