$('.baka-logo').css('visibility','hidden');
$(window).scroll(function(){
 var windowHeight = $(window).height(),
     topWindow = $(window).scrollTop();
 $('.baka-logo').each(function(){
  var targetPosition = $(this).offset().top;
  if(topWindow > targetPosition - windowHeight){
   $(this).addClass("fadeInDown");
  }
 });
});