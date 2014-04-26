$(document).ready(function(){
    var speed = 400;
    var menu = $('div#main_navigation');
    var offset = menu.offset().top;
    var menuStartPos = menu.position().top;
    if($.browser.name == 'firefox'){
    	var top_offset = -19;
        var speed = 0;
    }else{
    	var top_offset = -75;
        var speed = 0;
    }

    updateFloatingMenu();

$(window).scroll(function(){
    updateFloatingMenu();
});

$("#email_message_box").click(function(){
    $("#email_message_box").clear;
});



function updateFloatingMenu(){
    var scrollAmount = $(document).scrollTop();
    var newPosition = menuStartPos + scrollAmount;

    if(scrollAmount > offset){
        var topPos = (newPosition-offset) + top_offset;
        menu.stop().animate({top: topPos}, speed);
    }else{
        menu.stop().animate({top: menuStartPos}, speed);
    }
};



});
