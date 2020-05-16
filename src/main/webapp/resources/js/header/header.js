$(function() {

	$(".m-gnb .gnbBtn a").click(function() {
		$(this).next("ul").toggleClass("active");
		$(".m-gnb .gnbUl").toggleClass("active");
		return false;
	});

	$(".portfolio_menu").hover(
		function() {
			$(".portfolio_sub_menu", this).stop().slideDown(600)}, 
		function() {
			$(".portfolio_sub_menu", this).stop().slideUp(600)
	});

	$(".portfolio_sub_menu").hover(function() {
		$(".portfolio_menu").toggleClass("mouse_on");
	});
	
	$(".menu li").click(function(){
	       $(".current").removeClass("current");
	       $(this).addClass("current");
	});

});