
$(document).ready(slide);

/**
 * ==========
 * slide()
 * 슬라이드
 * ==========
 * html/css에서 작업해줘야 하는 것
 * ----------
 * .templateS_mobile_slide 슬라이드 틀 (overflow: hidden; 때문에 필요, class로 작업했으나 id 사용 추천)
 * .templateS_mobile_slide_imgs 이미지들을 이어 붙인 것
 * .templateS_mobile_slide_img 슬라이드에 들어갈 이미지
 * ==========
 * 개념
 * ----------
 * 이미지 하나만 보이도록 크기를 맞춰 틀을 만들고 
 * 이미지들을 가로로 쭉 이어 붙인다. 
 * 그리고 이어 붙인 긴 이미지를 
 * 일정 시간마다 왼쪽으로 움직여 
 * 이미지가 하나씩 보이도록 한다.
 * ==========
 */
function slide() {
	// 이미지 하나의 가로 길이 (px)
	const IMAGE_WIDTH = 300;
	// 이미지 전환에 걸리는 시간 (ms)
	const WORKING_TIME = 200;
	// 이미지 하나를 보여주는 시간 (ms)
	const INTERVAL_TIME = 2000;
	
	// 이미지 개수 (해당 페이지에서 .templateS_mobile_slide_img를 사용한 개수)
	var NUM_OF_IMAGES = $('.templateS_mobile_slide_img').length;
	// 이어 붙인 긴 이미지의 가로 길이를 (이미지 하나의 가로 길이 * (이미지 개수 + 1))만큼 설정
	// (개수에 1을 더하는 이유는 맨 뒤에 첫 번째 이미지의 복사본을 붙일 것이기 때문)
	// (첫 번째 이미지의 복사본을 붙이는 이유는 다시 앞으로 전환 시 자연스럽게 넘어가는 것처럼 보이게 하기 위해서)
	// (이 길이가 짧으면 길이가 모자라서 모자란 만큼 이미지들이 아랫줄로 내려감)
	$('.templateS_mobile_slide_imgs').width(IMAGE_WIDTH * (NUM_OF_IMAGES + 1) + "px");
	// 긴 이미지를 가리키는 변수
	var slideImages = document.querySelector('.templateS_mobile_slide_imgs');
	// 이미지 복사
	var firstImageClone = slideImages.firstElementChild.cloneNode(true);
	// 복사한 이미지를 긴 이미지 마지막에 추가
	slideImages.appendChild(firstImageClone);
	
	// 긴 이미지에서 슬라이드 틀 안으로 보이는 이미지의 인덱스
	var curIndex = 0;

	// 2000ms 간격으로 0.2s동안 긴 이미지 왼쪽으로 움직이기
	// setInterval(작업, 시간 간격) : 일정한 시간 간격으로 작업 수행
	setInterval(function() {
		// 동작(이미지 전환)에 걸리는 시간
		slideImages.style.transition = WORKING_TIME + "ms";
		// curIndex를 1 증가시킨 후, 긴 이미지를 왼쪽으로 (이미지 하나의 가로 길이 * curIndex)만큼의 위치가 되도록 움직임
		slideImages.style.transform = "translate3d(-" + IMAGE_WIDTH * (++curIndex) + "px, 0px, 0px)";
		
		// 마지막 이미지를 밀어내고 나서 0.001초 후에 맨 앞으로 돌아가도록 함
		// 이 지점에서는 마지막 이미지를 밀어내는 동작을 수행하기 전!
		// 즉, '마지막 이미지를 밀어내고 나서 0.001초 후' = '지금부터 (WORKING_TIME + 0.001초) 후'
		if(curIndex == NUM_OF_IMAGES) {
			// 201ms 후에 0s 동안 긴 이미지 원래 위치로 옮기기
			// setTimeout(작업, 지연 시간) : 일정한 시간 후에 작업 실행 (한 번)
			setTimeout(function() {
				slideImages.style.transition = '0s';
				slideImages.style.transform = "translate3d(0, 0, 0)";
			}, (WORKING_TIME + 1));
			// 인덱스 초기화
            curIndex = 0;
        }
	}, INTERVAL_TIME);
}
