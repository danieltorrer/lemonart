$(document).ready(function(){
    tamano()
    $(window).resize(tamano)
})

function tamano(){
    var largo = document.documentElement.clientHeight
    largo = largo-77-120
    minimo = 768 - 77 - 120
    console.log(minimo)

    $(".contenedor").css("min-height", largo)
}
