// 햄버거 버튼 js

var burger = $('.menu-trigger');

burger.each(function (index) {
  var $this = $(this);

  $this.on('click', function (e) {
    e.preventDefault();
    $(this).toggleClass('active-' + (index + 1));
  })
});

var h = 0;

$(burger).on("click", function () {
  if (h == 0) {
    $('.ham-con').animate({
      right: '0',
      opacity: 1
    }, 500);
    $(this).addClass('active-1');
    h++;
  } else if (h == 1) {
    $('.ham-con').animate({
      right: '-20%',
      opacity: 0
    }, 500);
    $(this).removeClass('active-1');
    h--;
  }
  $(window).scroll(function () {
    sct = $(window).scrollTop();
    if (sct > 30) {
      $('.ham-con').css({
        opacity: 0,
        right: '-20%'
      }, 500);
      $(burger).removeClass('active-1');
      h = 0;
    }
  });
})


// 슬라이드

var swiper = new Swiper(".mySwiper", {
  speed: 1500,
  spaceBetween: 30,
  centeredSlides: true,
  autoplay: {
    delay: 2500,
    disableOnInteraction: false,
  },
  pagination: {
    el: ".swiper-pagination",
    clickable: true,
  },
  navigation: {
    nextEl: ".swiper-button-next",
    prevEl: ".swiper-button-prev",
  },
});


//약관동의 클릭시 이미지 block none


var bDisplay = true;
function doDisplay(){
	var con = document.getElementById("imgDisplay");
	var con4 = document.getElementById("imgDisplay4");

	if(con.style.display=='none'){
		con.style.display = 'block';
	}else{
		con.style.display = 'none';
		con4.style.display = 'none';
	}
}

var bDisplay = true;
function doDisplay2(){
	var con = document.getElementById("imgDisplay2");
  var con4 = document.getElementById("imgDisplay4");

	if(con.style.display=='none'){
		con.style.display = 'block';
	}else{
		con.style.display = 'none';
		con4.style.display = 'none';
	}
}


var bDisplay = true;
function doDisplay3(){
	var con = document.getElementById("imgDisplay3");
	var con4 = document.getElementById("imgDisplay4");

	if(con.style.display=='none'){
		con.style.display = 'block';
	}else{
		con.style.display = 'none';
		con4.style.display = 'none';
	}
}


var bDisplay = true;
function doDisplay4(){
	var con2 = document.getElementById("imgDisplay");
	var con3 = document.getElementById("imgDisplay2");
	var con4 = document.getElementById("imgDisplay3");
  var con = document.getElementById("imgDisplay4");


	if(con.style.display=='none' || con2.style.display=='none' || con3.style.display=='none' || con4.style.display=='none'){
		con.style.display = 'block';
		con2.style.display = 'block';
		con3.style.display = 'block';
		con4.style.display = 'block';
	}else{
    con.style.display = 'none';
    con2.style.display = 'none';
    con3.style.display = 'none';
    con4.style.display = 'none';
  }

}

// 동의 모두선택 / 해제
const agreeChkAll = document.querySelector('input[name=agree_all]');
    agreeChkAll.addEventListener('change', (e) => {
		let agreeChk = document.querySelectorAll('input[name=agree]');
		for(let i = 0; i < agreeChk.length; i++){
			agreeChk[i].checked = e.target.checked;
		}
});

 /** 우편번호 찾기 */
 function execDaumPostcode() {
  daum.postcode.load(function () {
      new daum.Postcode({
          oncomplete: function (data) {
              // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분입니다.
              $("#postcode").val(data.zonecode);
              $("#address").val(data.roadAddress);
          }
      }).open();
  });
}




