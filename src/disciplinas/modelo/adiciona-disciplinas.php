<?php

// Iremos nos conectar ao banco de dados
include('../../conexao/conn.php');

    $nome = $_REQUEST['nome'];
    $professor = $_REQUEST['professor'];
    $nota = $_REQUEST['nota'];

if(empty($nome) || empty($professor)){
    echo "Existem campos vazios, tente novamente";
}else{
    
    // Gerar um script SQL para cadastro das informações no banco de dados
    $sql = "INSERT INTO disciplinas (nome, professor,nota) VALUES ('".$nome."', '".$professor."','".$nota."')";
    // Testar o comando SQL no banco de dados
    if(mysqli_query($conecta, $sql)){
        $dados = array(
            'tipo' => 'alert-success',
            'mensagem' => 'Dados cadastrados com sucesso!'
        );
    }else{
        $dados = array(
            'tipo' => 'alert-danger',
            'mensagem' => 'Ocorreu um erro no momento do cadastro'
        );
    }
}
echo json_encode($dados);