var flickitySyncer = [];

var elms = document.getElementsByClassName( "slide" ) ;

for( var i=0,l=elms.length; l>i; i++ )
{
	flickitySyncer[i] = new Flickity( elms[i] , {
    contain: true,
    wrapAround: true,  //무한스크롤
    draggable: false,
    autoPlay: true  //자동스크롤
  } ) ;
}

//마이페이지

function demo01() {
  $(this).next().slideToggle(300);
}

$(".drawer").click(demo01);
