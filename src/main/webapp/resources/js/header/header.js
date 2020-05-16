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
	
	$(".current").removeClass("current");
	var currentPage = $("#currentPage").val();

	
	if (currentPage == "about") {
		$(".menu li").eq(0).addClass("current");
		$(".menu li").eq(6).addClass("current");
	} else if (currentPage == "contact") {
		$(".menu li").eq(5).addClass("current");
		$(".menu li").eq(11).addClass("current");
	} else if (currentPage == "portfolio_main") {
		$(".menu li").eq(1).addClass("current");
		$(".menu li").eq(7).addClass("current");
	} else if (currentPage == "portfolio_a") {
		$(".menu li").eq(1).addClass("current");
		$(".menu li").eq(7).addClass("current");
		$(".menu li").eq(2).addClass("current");
		$(".menu li").eq(8).addClass("current");
	} else if (currentPage == "portfolio_j") {
		$(".menu li").eq(1).addClass("current");
		$(".menu li").eq(7).addClass("current");
		$(".menu li").eq(3).addClass("current");
		$(".menu li").eq(9).addClass("current");
	} else if (currentPage == "portfolio_s") {
		$(".menu li").eq(1).addClass("current");
		$(".menu li").eq(7).addClass("current");
		$(".menu li").eq(4).addClass("current");
		$(".menu li").eq(10).addClass("current");			
	}

});