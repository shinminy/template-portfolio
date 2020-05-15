$(function() {
	callbackTime = 1000;
	$(".main_container").onepage_scroll({
		sectionContainer: ".section",
		easing: "ease",
		animationTime: 700,
		pagination: true,
		loop: false,
		keyboard: true,
		direction: "vertical",
		beforeMove: function(index) {},
		afterMove:  function(index) {
			if(index == 2){
				$('.fade_in_up_with_scrolling1').animate({'opacity':'1','top':'0'}, 800, function(){
					$('.fade_in_up_with_scrolling2').animate({'opacity':'1','top':'0'}, 800, function(){
						$('.fade_in_up_with_scrolling3').animate({'opacity':'1','top':'0'}, 800);
					});
				});
			}
		},
	});
});