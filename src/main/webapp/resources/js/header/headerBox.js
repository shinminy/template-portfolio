
var start_point;

$(document).ready(function() {
	var container = $('.body_container').children().first();
	var frontOfClassName = container.attr('class').substring(0, 8);
	
	var first_content;
	if("templetJ" == frontOfClassName) {
		first_content = container.children().first();
	}
	else {
		first_content = container.children().eq(1);
	}
	
	if("template" == frontOfClassName) {
		start_point = first_content.offset().top + first_content.outerHeight(true);
	}
	else {
		start_point = first_content.offset().top;
	}
});

$(window).on('scroll',function() {
	
	var header_bottom = $('.header_container').offset().top + $('.header_container').outerHeight(true);
	if(header_bottom > start_point || header_bottom == start_point) {
		$('.header_container').addClass("active");
	}
	else{
		$('.header_container').removeClass("active");
	}
	
});