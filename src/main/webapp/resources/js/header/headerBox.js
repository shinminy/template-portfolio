
var start_point;

$(document).ready(function() {
	var container = $('body').children().eq(7);	// 불안정..상의 필요
	var first_content = container.children().first();
	if("template" == container.attr('class').substring(0, 8)) {
		start_point = first_content.offset().top + first_content.outerHeight(true);
	}
	else {
		start_point = first_content.offset().top;
	}
});

$(window).on('scroll',function() {
	
	var header_bottom = $('.header_container').offset().top + $('.header_container').outerHeight(true);
	
	if(header_bottom > start_point) {
		$('.header_container').addClass("active");
	}
	else{
		$('.header_container').removeClass("active");
	}
	
});
