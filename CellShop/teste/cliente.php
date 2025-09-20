<?php
    // Verifica se o formulário foi enviado
    if($_POST) {
        $nome = $_POST['nome'];
        $cpf = $_POST['cpf'];
        $email = $_POST['email'];
        $telefone = $_POST['telefone'];

        $mensagem = "Seja bem-vindo(a) ao CellShop, $nome!\n";
    }
?>

<!DOCTYPE html>
<html lang="pt-br">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta author="Michael Chioda">
        <meta name="descrição" content="Página do cliente da CellShop">
        <!--meta http-equiv="refresh" content="30; url=cliente.html--" É bom ser utilizado para jogar na tela de login de novo-->
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="stylesheet" href="cliente.css">

        <title> Página do Cliente - CellShop </title>

        <style>

            body {
                font-family: Arial;
                background-color: #404040;
            }

            h1 {
                color: white;
                text-align: center;
            }

            h2 {
                color: white;
            }
            
            h6 {
                color: white;
                text-align: center;
                margin-top: 60px;
            }

            p {
                color: white;
            }
        
            hr {
                border: 1px rebeccapurple solid;
            }

        </style>

    </head>

    <body>
        <?php
        if(isset($mensagem)) {
            echo "<h1> $mensagem </h1>";
        }
            echo "<hr>";

            echo "<h2> Seus dados cadastrados: </h2>";
            echo "<p> Nome: $nome </p>";
            echo "<p> CPF: $cpf </p>";
            echo "<p> Email: $email </p>";
            echo "<p> Telefone: $telefone </p>";
        ?>

        <footer>
            <hr>
            <h6> CellShop - 2025 <br> By Michael Chioda </h6>
        </footer>

    </body>
</html>
