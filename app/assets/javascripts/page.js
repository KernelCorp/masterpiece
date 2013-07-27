// =require grid
$(document).ready(
    function()
    {
        var nav_container = $(".nav-container");
	    var nav = $("nav");

	    var top_spacing = 0;

	    nav_container.css({ 'height':nav.outerHeight() });
	    nav.stop().addClass("sticky").css("top",-nav.outerHeight()).animate({"top":top_spacing});

        Grid.init_one_page();
});