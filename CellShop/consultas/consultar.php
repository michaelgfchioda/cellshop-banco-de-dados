<!DOCTYPE html>
<html lang="pt-br">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> <!-- Para que o layout se adapte entre dispositivos -->
        <meta http-equiv="X-UA-Compatible" content="ie=edge"> <!-- Para que o site seja compatível com o Internet Explorer -->
        <meta author="Michael Gabriel Ferreira Chioda">
        <meta name="consultas" content="Consultas CellShop">
        <link rel="stylesheet" href="consultar.css">

        <title> Consultar - CellShop </title>

    </head>

    <body>
        <titulo> <h1> <strong> Realize uma consulta em CellShop </strong> </h1> </titulo>
        <hr>

        <form method="POST" action="consultas.php">
            <br>
            <!-- <label> Escolha um tipo de consulta: </label> -->
            <p> <strong> Escolha um tipo de consulta </strong> </p>
                <div class="center"> 
                    <caixinha> 
                    <select name="consultas" id="consultas">
                        <option value="consultar_produtos"> Produtos </option>
                        <option value="consultar_vendas"> Vendas </option>
                        <option value="consultar_clientes"> Clientes </option>
                        <option value="consultar_vendas_c_itens"> Venda de Itens em 2024 </option>
                        <option value="consultar_cliente_pix"> Pagamento em Pix </option>
                        <option value="consultar_cliente_dinheiro"> Pagamento em Dinheiro </option>
                        <option value="consultar_cliente_cartao"> Pagamento em Cartão </option>
                    </select>
                    </caixinha>
                
                    <botao1> 
                        <button type="submit" id="consultar" name="consultar"> Consultar🔎 </button> 
                    </botao1>
                </div>

        </form>

        <?php
            include ("consultas.php");
    
            /*if ($opcao == "consultar_produtos") {
                while (mysqli_fetch_row($resultado1) > 0) {
                    echo "<p>";
                    echo "<strong> </strong>";
                    echo "</p>";
                }
            }*/
        ?>

        

    </body>

</html>