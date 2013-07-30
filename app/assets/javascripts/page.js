// =require grid
//on_resize = function (){
//    window_height = $(window).height();
//    header_height = $('.sticky').height();
//    footer_height = $('footer').height();
//    body_height = $('.og-grid').height();
//    if (body_height <= window_height){
//        $('.cont').height(window_height - (header_height+footer_height)-35);
//        console.log($('.cont').height())
//    }
//}

$(document).ready(
    function()
    {
        var nav_container = $(".nav-container");
	    var nav = $("nav");

	    var top_spacing = 0;

	    nav_container.css({ 'height':nav.outerHeight() });
	    nav.stop().addClass("sticky").css("top",-nav.outerHeight()).animate({"top":top_spacing});
        Grid.init_one_page();
        $('.page-title').hide();
        //on_resize()
        //$(window).resize(on_resize);
});