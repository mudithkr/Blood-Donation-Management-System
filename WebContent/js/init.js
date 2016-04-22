$('.button-collapse').sideNav();

$('.menux').click(function(){
	$('.side-nav').animate({left:"0px"});
	$('.drag-target').animate({left:"240px"});
});

$('.drag-target').click(function(){
	$('.side-nav').animate({left:"-250px"});
});

$('.x1').click(function(){
	$('.x2').removeClass('active');
	$('.x3').removeClass('active');
});
$('.x2').click(function(){
	$('.x1').removeClass('active');
	$('.x3').removeClass('active');
});
$('.x3').click(function(){
	$('.x2').removeClass('active');
	$('.x1').removeClass('active');
});