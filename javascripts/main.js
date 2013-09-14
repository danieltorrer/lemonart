$(document).ready(function(){
    tamano()
    $(window).resize(tamano)
})

function tamano(){
    var largo = document.documentElement.clientHeight
    largo = largo-75-119;
    $(".contenedor").css("min-height", largo)
}
