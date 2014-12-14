$(document).on('ready', url);


function url(valor){
    var href = $(location).attr('href');

    console.log(href);

    if(href=='http://localhost:8000/'){
    	$('.navbar-default .navbar-nav li a').eq(0).css({'color':'#f1c40f'});
    	$('.navbar-default .navbar-nav li a').eq(1).addClass('colorFix');
    	$('.navbar-default .navbar-nav li a').eq(2).addClass('colorFix');
    	$('.navbar-default .navbar-nav li a').eq(3).addClass('colorFix');
    	$('.navbar-default .navbar-nav li a').eq(4).addClass('colorFix');
    }

    if(href.indexOf('group')!=-1 ){
    	$('.navbar-default .navbar-nav li a').eq(1).css({'color':'#f1c40f'});
    	$('.navbar-default .navbar-nav li a').eq(0).addClass('colorFix');
    	$('.navbar-default .navbar-nav li a').eq(2).addClass('colorFix');
    	$('.navbar-default .navbar-nav li a').eq(3).addClass('colorFix');
    	$('.navbar-default .navbar-nav li a').eq(4).addClass('colorFix');
    }

    if(href.indexOf('expertise')!=-1){
    	$('.navbar-default .navbar-nav li a').eq(2).css({'color':'#f1c40f'});
    	$('.navbar-default .navbar-nav li a').eq(0).addClass('colorFix');
    	$('.navbar-default .navbar-nav li a').eq(1).addClass('colorFix');
    	$('.navbar-default .navbar-nav li a').eq(3).addClass('colorFix');
    	$('.navbar-default .navbar-nav li a').eq(4).addClass('colorFix');

    }

    if(href.indexOf('contactus')!=-1){
    	$('.navbar-default .navbar-nav li a').eq(3).css({'color':'#f1c40f'});
    	$('.navbar-default .navbar-nav li a').eq(2).addClass('colorFix');
    	$('.navbar-default .navbar-nav li a').eq(0).addClass('colorFix');
    	$('.navbar-default .navbar-nav li a').eq(1).addClass('colorFix');
    	$('.navbar-default .navbar-nav li a').eq(4).addClass('colorFix');
    }

    if(href.indexOf('careers')!=-1){
		$('.navbar-default .navbar-nav li a').eq(4).css({'color':'#f1c40f'});
    	$('.navbar-default .navbar-nav li a').eq(2).addClass('colorFix');
    	$('.navbar-default .navbar-nav li a').eq(0).addClass('colorFix');
    	$('.navbar-default .navbar-nav li a').eq(1).addClass('colorFix');
    	$('.navbar-default .navbar-nav li a').eq(3).addClass('colorFix');
    }



    
}
