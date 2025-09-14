<!DOCTYPE html>
<html lang="pt-br">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> <!-- Para que o layout se adapte entre dispositivos -->
        <meta http-equiv="X-UA-Compatible" content="ie=edge"> <!-- Para que o site seja compatível com o Internet Explorer -->
        <meta author="Michael Gabriel Ferreira Chioda">
        <meta name="descrição" content="Página CellShop">
        <link rel="stylesheet" href="index.css">

        <title> CellShop </title>

<!--
        <style>
            body {
                background-color: rgb(80, 25, 123);
                font-family: Arial, Helvetica, sans-serif;
                border-radius: 10px;
                border-color: white;
            }

            titulo h1 {
                color: white;
                background-color: rgb(74, 13, 123);
    
                text-align: center;

                margin: 0px;
                border-radius: 25px;
                border-color: rgb(136, 59, 160);
                padding: 70px;
            }

            imagem1 > img {
                border-radius: 100px;
            }

            imagem2 > img {
                border-radius: 0px;
            }

            p {
                color: white;
                background-color: rgb(74, 13, 123);

                padding: 35px;
                border-radius: 25px;

                margin-top: 0px;
                margin-bottom: 0px;

                text-align: center;
            }

            dpstitulo > hr {
                margin-top: 0px;

                border-style: hidden;
            }

            antesbotao > hr {
                margin-top: 0px;
                margin-bottom: 40px;

                border-style: hidden;
            }

            rodape > hr {
                margin-top: 100px;

                border-color: rgb(74, 13, 123);
                border-radius: 25px;
                background-color: rgb(74, 13, 123);
                padding-bottom: 10px;
            }

            footer {
                color: white;

                text-align: center;
                font-size: small;

                border: 10px;

               margin-top: 150px;
            }

            button {
                color: rgb(136, 59, 160);
                font-size: large;

                border-radius: 50px;
                border-color: rgb(136, 59, 160);

                padding: 50px;
    
                margin: 50px;
                margin-bottom: 0px;
                margin-top: 0px;

                cursor: pointer;
            }

            .center {
                display: flex;
                justify-content: center;
                align-items: center;
            }
            
        </style>
-->

    </head>

    <body>
        <titulo> 
            <h1> 
                <imagem1> <img src="imgs/download.png" alt="jinwoo's icon" width="100px" height="100px"> </imagem1> 
                <br> Bem vindo(a) ao DB_CellShop! 
            </h1> 
        </titulo>
        
        <dpstitulo> <hr> </dpstitulo>

        <p> 
            <strong> 
                <!-- Logo da FAT -->
                <!-- <imagem2> <img src="imgs/Logo_fat.png" alt="FAT's icon" width="120px" height="45px"> </imagem2> -->
                    FAT - Aplicação de Banco de Dados - CellShop <br> Michael Gabriel Ferreira Chioda 
            </strong> 
        </p>

        <antesbotao> <hr> </antesbotao>

        <br> <br> <br>

        <!-- Botões para acessar outras páginas -->
        <div class="center">
            <a href="cadastro/cadastro.php"> <botao1> <button type="submit"> <strong> 📄<br>Cadastro </strong> </button> </botao1> </a>
            <br>
            <a href="consultas/consultar.php"> <botao2> <button type="submit"> <strong> 🔎<br>Consultas </strong> </button> </botao2> </a>
            <br>
            <a href="relatorio/relatorio.php"> <botao3> <button type="submit"> <strong> 📈<br>Relatórios </strong> </button> </botao3> </a>
        </div>

        <?php include ("D:/wamp64/www/Cellshop/consultas/conexao.php"); ?>

        <rodape> <hr> </rodape>
        
        <footer> © 1.0 version - 2025 - All rights reserved <br> By Michael Chioda </footer>

    </body>

</html>
