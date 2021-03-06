<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>

	<meta http-equiv="content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Bussiness Card</title>
	<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
	<link href="https://fonts.googleapis.com/css?family=Black+Han+Sans|Gaegu|Gothic+A1|Nanum+Pen+Script|Hi+Melody&display=swap" rel="stylesheet">
	<style>
	/*
	font-family: 'Black Han Sans', sans-serif;
	font-family: 'Gothic A1', sans-serif;
	font-family: 'Gaegu', cursive;
	font-family: 'Nanum Pen Script', cursive;
	font-family: 'Hi Melody', cursive;
	*/

		html, body{ height:auto; width:100%; background:#182a3f; }
		*{ margin:0; padding:0; letter-spacing: 2px; z-index:20000; font-family: 'Gaegu', cursive; } /*약식초기화*/
		p{ padding:10px; } 
		a{ text-decoration:none; }
		a:link{ text-decoration:none; }
		a:visited{ text-decoration:none; }
		a:hover{ text-decoration:none; }
		a:active{ text-decoration:none; }

		#wrap { /*background:#182a3f;*/ width:100%; height:100%; margin:0 auto; position:relative; }

		#title{ width:100%; height:200px; /*background:#2e2d2d;*/ margin-bottom:20px; }
		
		#title p { color:#ffffff; font-size:xx-large; }
		
		#card_wrap{ 
			display:grid; 
			margin:0 auto; 
			height:auto; 
			width:100%; 
			justify-content:center; 
			grid-template-columns: repeat(auto-fill, minmax(300px, 300px)); 
			grid-auto-rows: minmax(200px, auto); 
			grid-gap:30px; 
			margin-bottom:100px;
		}
		
		#Joeh{ background:#ffffff; }
		
		#Dong{ background:#f5b433; }
		
		#ETC{ 
			position:fixed; 
			bottom:0; 
			width:100%; 
			border-bottom:10px double  #f5b433; 
			height:50px; 
			/*background:#2e2d2d;*/
		}
		
		.b_card{ 
			padding:10px;
			z-index:1;
			position:relative;
			overflow:hidden; 
		}

		.topping_p1{
			font-size: x-small;
			font-weight: 100;
			color: #757575;
			z-index:3;
			top: 10px;
			left: 10px;
			font-family: 'Gothic A1', sans-serif;
		}

		.topping_p2{
		    font-size: medium;
			font-weight: 600;
			color: #3e3e3e;
			z-index: 4;
			bottom: 10px;
			right: 10px;
			font-family: 'Gaegu', cursive;
		}

		.topping{ position:absolute; }

		.topping_olive {
			width: 16px;
			height: 16px;
			border: 10px solid #000;
			border-radius: 100%;
			top: 86px;
			left: 137px;
			z-index: 1000;
		}

		.topping_circle{
			width: 90px;
			height: 60px;
			background: #f69505;
			border-top-left-radius: 60px;
			border-top-right-radius: 30px;
			border-bottom-right-radius: 40px;
			border-bottom-left-radius: 15px;
			top: 46px;
			left: 137px;
			z-index: 2;
			transform: rotate(45deg);
		}

		.topping_circle2{
			width: 160px;
			height: 240px;
			background: #eaeaea;
			border-top-left-radius: 100px;
			border-top-right-radius: 60px;
			border-bottom-right-radius: 200px;
			border-bottom-left-radius: 15px;
			top: -75px;
			left: -12px;
			z-index: 1;
			transform: rotate(75deg);
		}

		.topping_circle2_2{
			width: 160px;
			height: 240px;
			background:#5b5b5b;
			border-top-left-radius: 100px;
			border-top-right-radius: 60px;
			border-bottom-right-radius: 200px;
			border-bottom-left-radius: 15px;
			top: -75px;
			left: -12px;
			z-index: 1;
			transform: rotate(75deg);
		}

		.flip{
			position:absolute;
			top:50%;
			left:50%;
			transform:translate(-50%, -50%);
			display:none;
			text-align:center;
			font-family: 'Hi Melody', cursive;
			font-size:20px;
			width: 100%;
		}

		.bc_data{ font-family: 'Nanum Pen Script', cursive; }

		.click_box{ 
			display:none;
			position:absolute;
			width:101%;
			height:101%;
			top:50%;
			left:50%;
			transform:translate(-50%, -50%);
			z-index:1001;
			background:#000000a3;
		}
		.inner_click_box{ 
			cursor:pointer;
			background:#00bcd4;
			position:absolute;
			padding:5px;
			border-radius:100px;
			top:50%;
			left:50%;
			transform:translate(-50%, -50%);
		}

		.skill{
			margin-top:20px;
			text-decoration: underline wavy;
			text-decoration-color: #909090;
		}

		.filp_c:nth-child(1):nth-child(1):before,.filp_c:nth-child(1):nth-child(1):after{
			cursor:pointer;
			content:'';
			width:30px;
			height:30px;
			position:absolute;
			border-top:1px solid #8d8d8d;
			top:-8px;
		}
		.filp_c:nth-child(1):nth-child(1)::before{
			right:-20px;
		}
		
		.filp_c:nth-child(1):nth-child(1)::after{
			right:0px;
		}

		.filp_c:nth-child(1):nth-child(1)::before{
		  transform:translate(-50%,-50%) rotate(-45deg)
		}
		.filp_c:nth-child(1):nth-child(1)::after{
		  transform:translate(-50%,-50%) rotate(45deg)
		}
	</style>

</head>

<body>
<div id="wrap">
	<div id="title">
		<p>J&D</p>

	</div>

	<div id="card_wrap">
		<div id="Joeh" class="b_card">
			<div class="topping_p1 topping">WEB / ANDROID</div>
			<div class="topping_p2 topping">JOEH</div>
			<!--topping-->
			<div class="topping_olive topping"></div>
			<div class="topping_circle topping"></div>
			<div class="topping_circle2 topping"></div>

			<!--flip-->
			<div class="flip">
				<div class="filp_c">Name : <span class="bc_data name">Joeh</span></div>
				<div>Age : <span class="bc_data age">29</span></div>
				<div>Phone : <span class="bc_data phone">010-9139-8516</span></div>
				<div class="bc_data skill">Skill 자세히 보기</div>
			</div>

			<!--click! box-->
			<div class="click_box">
				<div class="inner_click_box">click!</div>
			</div>

		</div>

		<div id="Dong" class="b_card">
			<div class="topping_p1 topping" style="color:#cdcdcd;">WEB / SERVER</div>
			<div class="topping_p2 topping" style="color:#ffffff;">DONG</div>
			<!--topping-->
			<div class="topping_olive topping"></div>
			<div class="topping_circle topping" style="background:#182a3f;"></div>
			<div class="topping_circle2_2 topping"></div>

			<!--flip-->
			<div class="flip">
				<div class="filp_c">Name : <span class="bc_data name">DONG</span></div>
				<div>Age : <span class="bc_data age">27</span></div>
				<div>Phone : <span class="bc_data phone">010-5263-8516</span></div>
				<div class="bc_data skill">Skill 자세히 보기</div>
			</div>

			<!--click! box-->
			<div class="click_box">
				<div class="inner_click_box">click!</div>
			</div>

		</div>

		<div id="empty" class="b_card" style="border:1px dashed #cdcdcd;">
			<div class="topping_p1 topping" style="color:#cdcdcd;">EMPTY</div>
			<div class="topping_p2 topping" style="color:#ffffff;">EMPTY</div>
			<!--topping-->
			<div class="topping_olive topping"></div>
			<div class="topping_circle topping" style="background:#2e2d2d;"></div>
			<div class="topping_circle2 topping" style="background:#929292;"></div>

			<!--flip-->
			<div class="flip" style="color:#fff;">
				<div class="filp_c">Name : <span class="bc_data name">EMPTY</span></div>
				<div>Age : <span class="bc_data age">??</span></div>
				<div>Phone : <span class="bc_data phone">010-????-????</span></div>
				<div class="bc_data skill">지원하기</div>
			</div>

			<!--click! box-->
			<div class="click_box">
				<div class="inner_click_box">click!</div>
			</div>

		</div>

	</div>

	<div id="ETC">
	<p style="text-align:right; color:#ffffff;vertical-align: middle; line-height: 3;">made by. Joeh</p>

	</div>
</div>

</body>

<script>
$(".click_box").click(function(){
	/*var parent_b = $(this).parent(".b_card");

	var tag_list = $(parent_b).children();
	for(i=0; i<tag_list.length; i++){
		$(tag_list[i]).fadeToggle('slow');
	}*/

	var developer = $($(this).parents(".b_card")[0]).attr('id');
	console.log(developer);
	location.href = "subpage/"+developer;//+developer;

});

//
$(".b_card").hover(function(){

	var filp = $($(this).find(".flip"));
	if($(filp).css("display") == "block") return;

	var click_box = $(this).find(".click_box");
	$(click_box).fadeIn('slow');

}, function(){

	var click_box = $(this).find(".click_box");

	$(click_box).fadeOut('slow');
});

// 상세페이지 이동
$(".skill").click(function(){

	var developer = $($(this).parents(".b_card")[0]).attr('id');
	console.log(developer);
	location.href = "subpage";//?developer="+developer;
});

$(".filp_c").click(function(){
	var b_card = $(this).parents(".b_card")[0];

	var tag_list = $(b_card).children();
	for(i=0; i<tag_list.length; i++){
		$(tag_list[i]).fadeToggle('slow');
	}

});
</script>

</html>