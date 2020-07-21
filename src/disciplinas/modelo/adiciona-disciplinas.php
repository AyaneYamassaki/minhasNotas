<?php

    // Iremos conectar nossa função ao banco de dados
    include('../../conexao/conn.php');
    //require_once(); ... É requirido para executar...

    $nome = $_REQUEST['nome'];
    $professor = $_REQUEST['professor'];
    $nota = $_REQUEST['nota'];
    //echo " A disciplina " .$nome. " do professor " .$professor. " você obteve a nota " .$nota;

    // Verificando se os campos foram preenchidos
    if(strlen($nome) == 0 || strlen($professor) == 0){
        echo "existe campos em branco!!";
    }else{
        // Criar Variáveis para receber comando SQL
        $sql = "INSERT INTO disciplinas(nome, professor, nota) VALUES ('".$nome."', '".$professor."', '".$nota."')";
        // testar a linha SQL, diretamente no banco dedados
        if(mysqli_query($conecta, $sql)){
            echo "A disciplina " .$nome. ", foi salva com sucesso!";
        }else{
            echo "Deu RUIM..." .mysqli_error($conecta);
        }

    }
    //PARA pesquisa, o GET é efetivo