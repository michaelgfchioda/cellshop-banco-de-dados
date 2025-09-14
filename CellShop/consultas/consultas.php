<?php

    // Conectando com meu Banco de Dados
    include ("conexao.php");

    // Usando a variável "opção" para encaminhar o usuário para a página da consulta desejada
    if ($_POST) {
        $opcao = $_POST['consultas'];

        switch ($opcao) {
            case 'consultar_produtos':
                header("location: consultar_produtos.php");
                break;
            
            case 'consultar_vendas':
                header("location: consultar_vendas.php");
                break;

            case "consultar_clientes":
                header("location: consultar_clientes.php");
                break;

            case 'consultar_vendas_c_itens':
                header("location: consultar_vendas_c_itens.php");
                break;

            case 'consultar_cliente_pix':
                header("location: consultar_cliente_pix.php");
                break;

            case 'consultar_cliente_dinheiro':
                header("location: consultar_cliente_dinheiro.php");
                break;

            case 'consultar_cliente_cartao':
                header("location: consultar_cliente_cartao.php");
                break;

            default:
                echo "Erro: Opção inválida.";
                break;
        }
    }
?>
