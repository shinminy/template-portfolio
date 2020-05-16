
$(send);

/**
 * 구글 지도
 */
function initialize() {
	var myLatlng = new google.maps.LatLng(37.500709, 127.024550);
	var mapOptions = {
		zoom : 16,
		center : myLatlng,
		mapTypeId : google.maps.MapTypeId.ROADMAP
	}
	var map = new google.maps.Map(document.getElementById('map_canvas'),
			mapOptions);

	var marker = new google.maps.Marker({
		position : myLatlng,
		map : map,
		title : "Minee"
	});
}

/**
 * 메일 보내기
 */
function send() {
	var formObj = $(".mail_form");
	
	formObj.on("submit", function() {
		
		if (confirm("메세지를 보내시겠습니까?")) {
			var inputs = document.getElementsByTagName('input');
			const SIZE = inputs.length - 1;
			var value;
			for(var i = 0; i < SIZE; i++) {
				value = inputs[i].value;
				if((value == null) || (value.length == 0)) {
					alert("이름, 메일주소, 메세지를 모두 입력하십시오.");
					return false;
				}
			}
			
			var params = formObj.serialize();
			$.ajax({
				type: "post",
				url: "/contact/sendMail.do",
				data: params,
				async: false,
				dataType: "text",
				success: function(result) {
					if (result == "success") {
						alert("메세지를 보냈습니다.");
					} else {
						alert("메세지를 보내지 못했습니다.");
						return false;
					}
				},
				error : function() {
					alert("데이터 전송 실패");
					return false;
				}
			});
		}
		else return false;
		
	});
}
