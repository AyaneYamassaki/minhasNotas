<?php
 
    // Iremos conectar nossa função ao banco de dados
    include('../../conexao/conn.php');
 
    $id = $_REQUEST['id'];
 
    // Verificando se os campos foram preenchidos
    if(strlen($id) == 0){
        $dados = array(
            'tipo' => 'alert-warning',
            'mensagem' => 'Id informado, INVÁLIDO!'
        );
    }else{
        // Criaremos uma variável para receber os comandos SQL
        $sql = "DELETE FROM alunos WHERE id = ".$id."";
        // Iremos testar a nossa linha SQL, diretamente no banco de dados
            if(mysqli_query($conecta, $sql)){
                $dados = array(
                    'tipo' => 'alert-success',
                    'mensagem' => 'Registro excluido com SUCESSO!'
                );
            }else{
                $dados = array(
                    'tipo' => 'alert-danger',
                    'mensagem' => 'ERRO ao efetuar exclusão do registro.'
                );
            }
    }
 
 echo json_encode($dados);