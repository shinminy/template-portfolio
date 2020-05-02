
$(document).ready(function() {
	const IMAGE_WIDTH = 300;
	const NUM_OF_IMAGES = $('.templateS_mobile_slide_img').length;
	$('.templateS_mobile_slide_imgs').width(IMAGE_WIDTH * (NUM_OF_IMAGES + 1) + "px");
	var slideImages = document.querySelector('.templateS_mobile_slide_imgs');
	var firstImageClone = slideImages.firstElementChild.cloneNode(true);
	slideImages.appendChild(firstImageClone);
	var curIndex = 0;
	setInterval(function() {
		slideImages.style.transition = '0.2s';
		slideImages.style.transform = "translate3d(-" + IMAGE_WIDTH * (++curIndex) + "px, 0px, 0px)";
		
		if(curIndex == NUM_OF_IMAGES) {
			setTimeout(function() {
				slideImages.style.transition = '0s';
				slideImages.style.transform = "translate3d(0, 0, 0)";
			}, 201);
            curIndex = 0;
        }
	}, 2000);
	
	var displayArr = new Array($('.fade_in_up_with_scrolling').length);
	$(window).scroll(function() {
		$('.fade_in_up_with_scrolling').each( function(i) {
			if(!displayArr[i]) {
				var middle_of_element = $(this).offset().top + $(this).outerHeight() / 4;
				var bottom_of_window = $(window).scrollTop() + $(window).height();
				
				if(bottom_of_window > middle_of_element) {
					$(this).animate({
						'opacity':'1',
						'top':'0'
					}, 2000);
					displayArr[i] = true;
				}
			}
		});
	});
});
