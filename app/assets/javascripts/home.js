$(document).ready(function(){
    var speed = 400;
    var menu = $('div#main_navigation');
    var offset = menu.offset().top;
    var menuStartPos = menu.position().top;
    if($.browser.name == 'firefox'){
    	var top_offset = -30;
    }else{
    	var top_offset = -86;
    }
        
    updateFloatingMenu(); 

$(window).scroll(function(){
    updateFloatingMenu();
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