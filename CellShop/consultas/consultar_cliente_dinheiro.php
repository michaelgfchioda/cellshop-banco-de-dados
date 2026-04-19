<?php
    // Conectando com meu Banco de Dados
    include ("conexao.php");

    $sql_query_cliente_dinheiro =   "SELECT
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
                                    WHERE tb_pagamento.forma_pagamento = 'dinheiro'
                                    ORDER BY id_venda ASC;";
    
    $resultado5 = mysqli_query($conexao, $sql_query_cliente_dinheiro);

    if (mysqli_num_rows($resultado5) > 0) {
        $linhas5 = mysqli_fetch_assoc($resultado5);

        while ($linhas5 != NULL || $linhas5 > 0) {
            echo "<p>";
            echo "<strong> id_cliente: </strong>" .$linhas5['id_cliente'];
            echo "<br> <strong> nome: </strong>" .$linhas5['nome'];
            echo "<br> <strong> cpf: </strong>" .$linhas5['cpf'];
            echo "<br> <strong> id_venda: </strong>" .$linhas5['id_venda'];
            echo "<br> <strong> data_venda: </strong" .$linhas5['data_venda'];
            echo "<br> <strong> id_pagamento: </strong>" .$linhas5['id_pagamento'];
            echo "<br> <strong> forma_pagamento: </strong>" .$linhas5['forma_pagamento'];
            echo "<br> <strong> valor_pago: </strong>" .$linhas5['valor_pago'];
            echo "<br> <strong> parcelas: </strong>" .$linhas5['parcelas'];
            echo "</p> <hr>";

            $linhas5 = mysqli_fetch_assoc($resultado5);
        }
    } else {
        die ("Nenhum pagamento realizado com dinheiro.");
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

        <title> Pagamento em Dinheiro - CellShop </title>
    </head>
    
    

</html>