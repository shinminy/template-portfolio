$(function() {
	$(".m-gnb .gnbBtn a").click(function() {
		$(this).next("ul").toggleClass("active");
		$(".m-gnb .gnbUl").toggleClass("active");
		return false;
	});
});