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


//이미지 클릭시 색상변경

// function ChangeColor(t)
// {
//     if( t == '1' ){       
//         document.getElementById('here').className = "img1";       
               
//     }
// }   

var bDisplay = true;
function doDisplay(){
	var con = document.getElementById("imgDisplay");
	if(con.style.display=='none'){
		con.style.display = 'block';
	}else{
		con.style.display = 'none';
	}
}