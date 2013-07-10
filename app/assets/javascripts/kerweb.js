var mail = function(e) {
	if(e.preventDefault)
		e.preventDefault();
	else
		e.returnValue = false;
	var mailto = e.currentTarget.text.replace("[at]","@");
	window.open("mailto:" + mailto);
}

$(document).ready(function() {
	/*$("[rel^=imageGallery]").prettyPhoto({
		show_title: false,
		theme: 'dark_rounded'
	});*/
	$("#contact a:contains('[at]')").on('click', mail);
	/*$(".project").each(function(i, elem) {
		$(elem).attr("id", "project-" + i);
		slideInfo(this, "project-" + i);
	});*/
});
