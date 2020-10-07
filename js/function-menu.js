$(document).ready(function() {

    //Abrir a página adiciona-disciplinas dentro do index.html

    $('.btn').click(function(e) {
        e.preventDefault() //não fazer oq está acostumado
        let url = $(this).attr('href')
        $('#conteudo').empty()
        $('#conteudo').load(url)
    })

})