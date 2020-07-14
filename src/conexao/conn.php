<!-- conn é a abreviatura de connection -->
<?php

    // Demonstre todos os erros e alertas existentes quanto ao, código e interação com o B.D.
        //Os dois comandos a seguir, tem por finalidade a forçar uma configuração no servidor APACHE
        ini_set('display_erros', true);
        error_reporting(E_ALL);

        // Criação de variáveis pra acesso ao banco de dados
        $hostname = "localhost";
        $username = "root";
        $password = "";
        $database = "minhasnotas";
        

        if($conecta = mysqli_connect($hostname, $username, $password, $database)){
            // echo "Conexão com o Banco de Dados " .$database. " efetuado com sucesso!";
        }else{
            echo "Erro: " .mysqli_connect_error();
        }