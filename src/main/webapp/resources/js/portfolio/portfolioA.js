$(window).on('scroll',function() {

	var header_bottom_x = $('.header_container').offset().top +  $('.header_container').outerHeight(true);
	var first_content_top_x = $('.templateA_top_area + .templateA_section').offset().top - 90;
	
	if(header_bottom_x > first_content_top_x){
		$('.header_container').addClass("active");
	}else{
		$('.header_container').removeClass("active");
	}
	
});