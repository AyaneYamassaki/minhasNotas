$(document).ready(function() {

    //Abrir a página adiciona-disciplinas dentro do index.html

    $('#adiciona').click(function(e) {
        e.preventDefault() //não fazer oq está acostumado
        $('#conteudo').empty()
        $('#conteudo').load('../src/disciplinas/visao/adiciona-disciplinas.html')
    })
})