var slideInfo = function(target, id) {
	var body = $(target).find(".slide-desc"),
	onMouseOut = function(event) {
		if($(event.toElement).parents("#" + id).length == 0 ) {
			if(body.queue("fx").length != 0) {
				body.stop(true);
			}
			body.animate({top: 145});
		}
	},
	onMouseOver = function(event) {
		if($(event.fromElement).parents("#" + id).length == 0) { 
			body.stop(true);
		}
		body.animate({top: 0});
	},
	_init = function() {
		$("#" + id).on('mouseover', onMouseOver);
		$("#" + id).on('mouseout', onMouseOut);
	},
	me = {
		target: target
	};
	_init();
	
	return me;
}
