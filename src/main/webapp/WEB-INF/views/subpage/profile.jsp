<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="content-Type" content="text/html; charset=utf-8" />
  <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <title>Buiseness Card</title>
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script src="https://kit.fontawesome.com/b66a962085.js" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootswatch/4.1.3/flatly/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Black+Han+Sans|Gaegu|Gothic+A1|Nanum+Pen+Script|Hi+Melody&display=swap" rel="stylesheet">
	<style>
	
		html, body{ height:auto; width:100%; height:100%; background:#182a3f; scroll-behavior:smooth;}
		*{ margin:0; padding:0; letter-spacing: 2px; z-index:20000; font-family: 'Gaegu', cursive; box-sizing: border-box; vertical-align:middle; transition: all 0.2s;} /*ì½ìì´ê¸°í*/
		
		p{ padding:10px; } 
		
		a{ text-decoration:none; }
		a:link{ text-decoration:none; }
		a:visited{ text-decoration:none; }
		a:hover{ text-decoration:none; }
		a:active{ text-decoration:none; }
		
		#title{ position:absolute;width:100%; height:50px; /*background:#2e2d2d;*/ margin-bottom:20px;margin-left: 20px;color:#ffffff; font-size:xxx-large; }
		#title p { color:#ffffff; font-size:xxx-large; height:auto; padding-top:30px;}
		
		#Dong{ background:#f5b433; }
		
		#ETC{ text-align:right; color:#ffffff; vertical-align: middle; position:fixed; bottom:0; width:100%; border-bottom:10px double  #f5b433; height:50px; }
		#ETC p {text-align:right; color:#ffffff;vertical-align: middle; line-height: 3;}
		#title{ width:100%; height:200px; /*background:#2e2d2d;*/ margin-bottom:20px;margin-left: 20px; }
		#title p { color:#ffffff; font-size:xxx-large; height:auto; padding-top:30px;}
		.accordian{
		}
		.services-section{
			background-size:cover;
			padding: 60jpx 0;
			width: 100%;
		    height: 100vh;
		    display: flex;
		    justify-content: center;
		    align-items: center;
		    color: #fff;
		}
		.inner-width{
			width:100%;
			max-width: 1200px;
			margin: auto;
			padding: 0 20px;
			overflow: hidden;
		}
		.inner-width ul{ text-align:center; font-size: 35px; color:#fff;}
		.section-title{
			text-align: center;
			color: #ddd;
			text-transform: uppercase;
			font-size: 30px;
		}
		.border{
			width: 160px;
			height: 2px;
			background: #82ccdd;
			margin: 20px auto;
			margin-bottom: 70px
		}
		.services-container1{
			display: flex;
			flex-wrap: wrap;
			justify-content: center;
		}
		.services-container1 table{
			border:2px;
			border-color:"white";
		}
		.services-container1 table tr{
			border:2px;
			border-color:"white";
		}
		.services-container1 table tr td{
			border:1px;
			border-color:white;
		}
				
		.services-container2{
			display: flex;
			flex-wrap: wrap;
			justify-content: center;
		}
		
		
		.services-container3{
			display: flex;
			flex-wrap: wrap;
			justify-content: center;
		}
		
		
		.services-container4{
			display: flex;
			flex-wrap: wrap;
			justify-content: center;
		}
		
		
		
		.service-box{
			max-width: 33.33%;
			padding: 10px;
			text-align: center;
			color: #ddd;
			cursor: pointer;
		}
		.service-icon{
			display: inline-block;
			width: 70px;
			height: 70px;
			border: 3px solid;
			color: #82ccdd;
			transform: rotate(45deg);
			margin-bottom:30px;
			margin-top: 16px;
			transition: 0.3s linear;
		}
		.service-icon i{
			line-height: 70px;
			transform: rotate(-45deg);
			font-size: 26px;
		}
		.service-box:hover .service-icon{
			background : #82ccdd;
			color: #ddd;
		}
		.service-title{
			font-size: 18px;
			text-transform: uppercase;
			margin-bottom: 10px;
		}
		.service-desc{
			font-size: 14px;
		}
		
		.gotopbtn{
			/* position: fixed; */
			width:50px;
			height:50px;
			background:#27ae60;
			/* bottom:40px; */
			right:50px;
			text-decoration:none;
			text-align:center;
			line-height:50px;
			color:white;
			font-size:22px;
		}
		
		
		.personal {
		}

		.career {
		}

		.education {
		}

		.skill {
		}
		section div {
			text-align: center;
			position: relative;
			top: 50%;  
			transform: translateY(-50%);
		}
		


		.burger {
		    width: 50px;
		    height: 50px;
		    border-radius: 100%;
		    background: #FFFFFF;
		    position:fixed;
		    top: 20px;
		    left: 30px;
		    display: inline-flex;
		    flex-direction: column;
		    justify-content: center;
		    align-items: center;
		    z-index: 98;
		    margin-left:1780px;
		    float:right;
		}

	    .burger span {
	        height: 2px;
	        width: 20px;
	        background: black;
	        margin: 2px;
	    }

        .burger:hover {
            cursor: pointer;
        }

        .burger:hover span:first-child {
            width: 10px;
            transform: rotate(-33deg) translate(-6px, 0px) ;
        }

        .burger:hover span:last-child {
            width: 10px;
            transform: rotate(33deg) translate(-6px, 0px);
        }


		.content {
		    width: 100%;
		    height: 100vh;
		    display: flex;
		    justify-content: center;
		    align-items: center;
		    color: #fff;
		}



		.menu {
		    width: 20%;
		    height: 100vh;
		    background: #000000;
		    display: flex;
		    justify-content: center;
		    align-items: center;
		    z-index: 99;
		    position: fixed;
		    top: 0;
		    left: 0;
		    transform: translateX(500%);
		    transition: all 0.4s;
		}

	    .menu_active{
	        transform: translateX(400%);
	        transition: all 0.4s;
	    }
	
	    .menu .btn-close {
	        position: absolute;
	        top: 20px;
	        right: 20px;
	        text-align: center;
	        font-size: 25px;
	        line-height: 20px;
	        height: 25px;
	        width: 25px;
	        color: white;
	        padding: 0;
	        border: 0;
	    }

        .menu .btn-close:hover {
            color: grey;
        }

	    .menu ul {
	        list-style-type: none;
	    }

        .menu ul li {
            margin: 10px;
            font-size: 25px;
        }

        .menu ul li a {
            color: #ffffff;
            text-decoration: none;
        }

        .menu ul li a:hover {
            color: grey;
        }
		
		
		@media screen and (max-width:480px){
		.service-box{
			max-width:45%;
		}
		}
		
		
	</style>
	
</head>
<body>

 	<div id="title">
		Ham Dong Gyun
		
		<div class="burger">
	        <span></span>
	        <span></span>
	        <span></span>
	    </div>
    
	</div>
	
	    <div class="menu">
	        <span class="btn btn-close">&times;</span>
	        <ul>
	            <li><a href="#personal">ì¸ì  ì¬í­</a></li>
	            <li><a href="#career">ê²½ë ¥</a></lis>
	            <li><a href="#education">êµì¡</a></li>
	            <li><a href="#skill">Skill Inventory</a></li>
	        </ul>
    	</div>
    	
	<div class="services-section" id ="personal">
		<div class="inner-width">
			<div class="personal">
				<ul>ì¸ì  ì¬í­</ul>
				<div class="border"></div>
				<div class="services-container1">
					<table>
						<tr>
							<td>ì±ëª</td>
							<td>í¨ëê· </td>
							<td>ìëìì¼</td>						
							<td>1994.08.15</td>
							<td>ë¨</td>
						</tr>
						<tr>
							<td>ì£¼ì</td>
							<td>ê²½ê¸°ë ììì íë¬êµ¬ ì°½ë£¡ëë¡ 42</td>
						</tr>
						<tr>
							<td>ììíì¬</td>
							<td>ìíì´ë¹ì¦(ì£¼)</td>
							<td>ìì¬ì¼</td>
							<td>2019.04.22</td>
						</tr>
						<tr>
							<td>ë¶ì</td>
							<td>ê°ë°ì¬ìë¶</td>
							<td>ì§ì</td>
							<td>ì¬ì</td>
							<td>ë³ì </td>
							<td>ë©´ì </td>
							<td>ì­ì¢</td>
							<td></td>
						</tr>
					</table>
				</div>
			</div>
		</div>
	</div>
	
	<div class="services-section" id ="career">
		<div class="inner-width">
				<ul>ê²½ë ¥</ul>
				<div class="border"></div>
				<div class="services-container2">
					<table>
						<tr>
							<td>íì¬ëª</td>
							<td>ê¸°ê°</td>
							<td>ì§ì</td>						
							<td>ë´ë¹ìë¬´</td>
						</tr>
						<tr>
							<td>Bjworld</td>
							<td>2018.04.17~2018.08.31</td>
							<td>ê·¼ë¡ì¥íì</td>
							<td>ì¹ ì ì§, ë³´ì, ê´ë¦¬, í¼ë¸ë¦¬ì±</td>
						</tr>
						<tr>
							<td>SGA</td>
							<td>2019.02.01~2019.02.28</td>
							<td>ì¸í´</td>
							<td>ë¸ë¡ì²´ì¸ ì¹ ê°ë°, ë°í</td>
						</tr>
						<tr>
							<td>ìí½ì¤</td>
							<td>2019</td>
							<td>ì£¼ì</td>
							<td>ì ëì¤ìì´ì´</td>
						</tr>
						<tr>
							<td>ìí½ì¤</td>
							<td>2019</td>
							<td>ì£¼ì</td>
							<td>One way platform(íêµ­ê¸°ë¥ê³µì¬)</td>
						</tr>
						<tr>
							<td>íêµ­ëìë°ì </td>
							<td>2019~2020</td>
							<td>ëë¦¬</td>
							<td>ëª¨ë°ì¼ì¤ë§í¸ì¤í¼ì¤ ì±, ì¬ëìì  ê´ë¦¬ì ì¹ ê´ë¦¬</td>
						</tr>
					</table>
				</div>
			</div>
		</div>
		
	<div class="services-section" id = "education">
		<div class="inner-width">
				<ul>êµì¡</ul>
				<div class="border"></div>
				<div class="services-container3">
				<table>
						<tr>
							<td>êµì¡ëª</td>
							<td>ììì¼</td>
							<td>ì¢ë£ì¼</td>
							<td>êµì¡ê¸°ê´</td>
						</tr>
						<tr>
							<td>ë¸ë¡ì²´ì¸ ì¤íìë¦¬ì¤í¸ ìì±ê³¼ì </td>
							<td>2018.09.01</td>
							<td>2019.02.28</td>
							<td>IITP</td>
						</tr>
						<tr>
							<td>spaframework</td>
							<td>2020.02.10</td>
							<td>2020.02.13</td>
							<td>KITRI</td>
						</tr>
						<tr>
							<td>nodejs</td>
							<td>2020.02.17</td>
							<td>2020.02.18</td>
							<td>KOSTA</td>
						</tr>
				</table>
				</div>
			</div>
		</div>


	<div class="services-section" id ="skill">
		<div class="inner-width">
			<ul>Skill Inventory</ul>
			<div class="border"></div>
			<div class="services-container4">
					<div class="service-box">
						<div class="service-icon">
							<i class="fas fa-paint-brush"></i>
						</div>
						<div class="service-title">Web Design</div>
						<div class="service-desc">
						hohohohohohhoho
						</div>
					</div>
					<div class="service-box">
						<div class="service-icon">
							<i class="fas fa-cannabis"></i>
						</div>
						<div class="service-title">Web Design</div>
						<div class="service-desc">
						hohohohohohhoho
						</div>
					</div>
					<div class="service-box">
						<div class="service-icon">
							<i class="fas fa-candy-cane"></i>
						</div>
						<div class="service-title">Web Design</div>
						<div class="service-desc">
						hohohohohohhoho
						</div>
					</div>
					<div class="service-box">
						<div class="service-icon">
							<i class="fas fa-carrot"></i>
						</div>
						<div class="service-title">Web Design</div>
						<div class="service-desc">
						hohohohohohhoho
						</div>
					</div>
					<div class="service-box">
						<div class="service-icon">
							<i class="fas fa-cat"></i>
						</div>
						<div class="service-title">Web Design</div>
						<div class="service-desc">
						hohohohohohhoho
						</div>
					</div>
					<div class="service-box">
						<div class="service-icon">
							<i class="fas fa-bug"></i>
						</div>
						<div class="service-title">Web Design</div>
						<div class="service-desc">
						hohohohohohhoho
						</div>
					</div>
					<div class="service-box">
						<div class="service-icon">
							<i class="fas fa-chess-rook"></i>
						</div>
						<div class="service-title">Web Design</div>
						<div class="service-desc">
						hohohohohohhoho
						</div>
					</div>
				</div>
			</div>
		</div>
	
	
	<div id="ETC">
		<a>made by. Joeh</a>
		<a class="gotopbtn" href="#"> <i class="fas fa-arrow-up"></i> </a>
	</div>
	
	
 
</body>
  <script>
  $(document).ready(function() {
	  
	    var menuLink = $('.burger');
	    var menu = $('.menu');
	    var close = $('.btn-close');
	    var navLink = $('ul li a');
	    var content = $('.services-section');

	    menuLink.click(function() {
	        menu.toggleClass('menu_active');
	    });

	    close.click(function() {
	        menu.toggleClass('menu_active');
	    });

	    navLink.on('click', function(event) {
	        event.preventDefault();
	        var target = $(this).attr('href');        
	        var top = $(target).offset().top;        
	        $('html, body').animate({scrollTop: top}, 500);
	        menu.toggleClass('menu_active');
	    });

	    content.click(function() {
	        menu.toggleClass('menu_active');
	    });
	});
  
  window.onload = function () {
      var elm = ".services-section";
      $(elm).each(function (index) {
          // ê°ë³ì ì¼ë¡ Wheel ì´ë²¤í¸ ì ì©
          $(this).on("mousewheel DOMMouseScroll", function (e) {
              e.preventDefault();
              var delta = 0;
              if (!event) event = window.event;
              if (event.wheelDelta) {
                  delta = event.wheelDelta / 120;
                  if (window.opera) delta = -delta;
              } 
              else if (event.detail)
                  delta = -event.detail / 3;
              var moveTop = $(window).scrollTop();
              var elmSelecter = $(elm).eq(index);
              // ë§ì°ì¤í ì ììì ìëë¡
              if (delta < 0) {
                  if ($(elmSelecter).next() != undefined) {
                      try{
                          moveTop = $(elmSelecter).next().offset().top;
                      }catch(e){}
                  }
              // ë§ì°ì¤í ì ìëìì ìë¡
              } else {
                  if ($(elmSelecter).prev() != undefined) {
                      try{
                          moveTop = $(elmSelecter).prev().offset().top;
                      }catch(e){}
                  }
              }
               
              // íë©´ ì´ë 0.8ì´(800)
              $("html,body").stop().animate({
                  scrollTop: moveTop + 'px'
              }, {
                  duration: 800, complete: function () {
                  }
              });
          });
      });
  }
  </script>
</html>