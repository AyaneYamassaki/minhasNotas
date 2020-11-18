<?php

    //Incluir o autoload do DOM PDF
    require_once '../../../libs/dompdf/autoload.inc.php';

    // Criar a instancia do DOM PDF
    // Criar o namespace para evitar erro
    use Dompdf\Dompdf;

    // Instanciando a classe do DOM PDF
    $dompdf = new Dompdf();

    // INICIO DO BLOCO DE CONSULTA AO BANCO DE DADOS PARA IMPRESSÃO DO BOLETIM-----------
        // Instancio a minha conexão de banco de dados
        include('../../conexao/conn.php');

        session_start();
    
        // Criar uma query de consulta ao banco de dados
        $sql = "SELECT * FROM disciplinas WHERE id_alunos = ".$_SESSION['id']."";
    
        // Agora iremos executar nossa query SQL
        $resultado = mysqli_query($conecta, $sql);
    
        // Iremos testar nossa consulta ao banco de dados, para ver se ela nãoe stá retornando vazia
        if($resultado && mysqli_num_rows($resultado)>0){
            // Criar um código HTML para ser transformado em PDF
$imprimir = '
<div class="container">
<div class="row">
<div class="col-12">
<div class="table-responsive">
<table class="table">
    <thead class="table-primary">
        <tr>
            <th scope="col" class="text-center d-none d-sm-block">ID</th>
            <th scope="col">DISCIPLINA</th>
            <th scope="col" class="d-none d-sm-block">PROFESSOR</th>
            <th scope="col" class="text-center">NOTA</th>
        </tr>
    </thead>
    <tbody>
    
';

            while($print = mysqli_fetch_array($resultado)){
                // $imprimir = $imprimir. '<p>'.$print['nome'].' - ' .$print['professor'].' - '.$print['nota'].' </p>';

                $imprimir=$imprimir.'
                <tr>
                        <td class="text-center d-none d-sm-block">'.$print['id'].'</td>
                        <td>'.$print['nome'].'</td>
                        <td class="d-none d-sm-block">'.$print['professor'].'</td>
                        <td class="text-center">'.$print['nota'].'</td>
                    </tr>
                ';
            }
            $imprimir=$imprimir.'
            </tbody>
</table>
</div>
</div>
</div>
</div>
            ';
        }else{
            $dados = array('erro' => 'Não foi possível buscar resultados');
        }

    // FIM DO BLOCO DE CONSULTA AO BANCO DE DADOS PARA IMPRESSÃO DO BOLETIM-----------
    
    $dompdf->loadHtml($imprimir);

    //Define o tipo de papel de impressão (opcional)
    //tamanho (A4, A3, A2, etc)
    //oritenação do papel:'portrait' (em pé) ou 'landscape' (deitado)
    $dompdf->setPaper('A4', 'portrait');

    // Vai renderizar o HTML como PDF
    $dompdf->render();

    // Saída do pdf para a renderização do navegador.
    //Coloca o nome que deseja que seja renderizado.
    $dompdf->stream("BOLETIM.pdf", array(true));
