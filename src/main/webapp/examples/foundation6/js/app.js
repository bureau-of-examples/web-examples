$(document).foundation();


function isScrolledIntoView(elem) {
    var $elem = $(elem);
    var $window = $(window);

    var docViewTop = $window.scrollTop();
    var docViewBottom = docViewTop + $window.height();

    var elemTop = $elem.offset().top;
    var elemBottom = elemTop + $elem.height();

    return ((elemBottom <= docViewBottom) && (elemTop >= docViewTop));
}

$(function(){
    var myBox = $('#myBox');
    $('#callWindow').click(function(){
        myBox.toggleClass('box-show');
    });

    myBox.toggleClass('box-show');
    $(document).scroll(function(){
        if(!myBox.hasClass('box-show')) {
            if(isScrolledIntoView(myBox)){
                myBox.toggleClass('box-show');
            }
        }
    });




});

