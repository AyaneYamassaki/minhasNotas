$(document).ready(function() {

    //Abrir a página adiciona-disciplinas dentro do index.html

    $('#adiciona-aluno').click(function(e) {
        e.preventDefault() //não fazer oq está acostumado
        $('#conteudo').empty()
        $('#conteudo').load('src/alunos/visao/adiciona-alunos.html')
    })
    $('#listar-alunos').click(function(e) {
        e.preventDefault() //não fazer oq está acostumado
        $('#conteudo').empty()
        $('#conteudo').load('src/alunos/visao/list-alunos.html')
    })
    $('#adiciona').click(function(e) {
        e.preventDefault() //não fazer oq está acostumado
        $('#conteudo').empty()
        $('#conteudo').load('src/disciplinas/visao/adiciona-disciplinas.html')
    })
    $('#listar').click(function(e) {
        e.preventDefault() //não fazer oq está acostumado
        $('#conteudo').empty()
        $('#conteudo').load('src/disciplinas/visao/list-disciplinas.html')
    })
})