<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>

	<meta http-equiv="content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1" ><!--, minimum-scale=1, maximum-scale=1, user-scalable=no-->
	<title>Bussiness Card</title>
	<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
	<script src="https://kit.fontawesome.com/73224f7568.js"></script>
	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR|Black+Han+Sans|Gaegu|Gothic+A1|Nanum+Pen+Script|Hi+Melody&display=swap" rel="stylesheet">
	<style>
	/*
	font-family: 'Noto Sans KR', sans-serif;
	font-family: 'Black Han Sans', sans-serif;
	font-family: 'Gothic A1', sans-serif;
	font-family: 'Gaegu', cursive;
	font-family: 'Nanum Pen Script', cursive;
	font-family: 'Hi Melody', cursive;
	*/

		html, body{ height:100%; width:100%; background:#fff; color:#000; margin:0; padding:0; }
		*{ margin:0; padding:0; letter-spacing: 2px; z-index:0; font-family: 'Gaegu', cursive; box-sizing:border-box; white-space:nowrap; } /*약식초기화*/
		p{ padding:10px; } 
		a{ color:inherit; text-decoration:none; cursor:pointer; }
		a:link{ color:inherit; text-decoration:none; }
		a:visited{ color:inherit; text-decoration:none; }
		a:hover{ color:inherit; text-decoration:none; }
		a:active{ color:inherit; text-decoration:none; }

		ul{ list-style:none; }
		
		img{ width:100%; height:auto; }

		iframe{ border:none; }

		#page_box{ margin:0 auto; width:100%; height:100%; max-width:1200px; position:relative; overflow:hidden; }
		#page_1st{ width: 100%; height: 100%; position: absolute; z-index: 1; }
		#page_2nd{ display:none; width: 100%; height: 100%; position: absolute; z-index: 1; }
		
		/*내용*/
		.primary{ z-index:1000; position:absolute; }
		.p_title, .p_title_2nd{ top:5%; left:3%; }
		.p_title_2nd{ top: 40%; left: 3%; transform: translate(0%, -50%); }
		.p_skill{ top:8%; right:6vw; font-size:14px; }
		.p_subtitle{ top: 63%; left: 20%; max-width: 200px; max-height: 200px; z-index: 1001; }
		.p_content,.p_content2,.p_content3{ overflow:hidden; }
		.p_content{ top:50%; left:0; width:28%; height:50%; /*border:12px solid #e06b87;*/ background: #009655/*#e06b87*/; }
		.p_content2{ top: 46%; right: 30%; max-width: 280px; max-height: 150px; width: 60%; height: 40%; /*border: 8px solid #168d15;*/ background: #168d15; padding:8px; }
		.p_content3{ top: 40%; right:0; width: 40%; height: 40%; /*border: 10px solid #000;*/ background: #000; }

		.p_title div{ background:#000; color:#fff; margin-bottom:10px; width: fit-content; font-size:20px; font-family: 'Noto Sans KR', sans-serif; letter-spacing:14px;}
		.p_title_2nd div{ background:#ffffff00; color:#000; margin-bottom:10px; width: fit-content; font-size:32px; font-family: 'Noto Sans KR', sans-serif; letter-spacing:1px; }

		.p_subtitle_t{ background:#fff; box-shadow: 7px 7px 0px 0px #da4f70; padding:4px; border: 1px solid #eeb0bf2e; margin-bottom:10px; width: fit-content; }
		.p_subtitle_c{ background: #eeb0bf; width: 100%; }

		.p_content_c img{ max-width:100%; max-height:100%; width:30%; height:auto; position:absolute; }

		/*판넬과 페인트*/
		.panel{ display:inline-block; float:left; height:100%; position:relative; overflow:hidden; background:#fff; border-right:1px solid #e4e4e4; z-index:0; }

		.panel:nth-child(1){ border-left:1px solid #e4e4e4; }
		
		.paint{  display:none; position:absolute; bottom:0; left:0; width:100%; height:0; background:#da4f7073; }

		#scroll_btn{ display:block; color:#da4f70; width:40px; height:65px; position:absolute; bottom:0; left:50%; border:2px solid #da4f707a; border-radius: 15px; word-wrap: break-word; text-align:center; font-size: 12px; line-height: 8px; background:#ffffff78; z-index: 1000;	transform:translate(-50%, -50%); }
		#scroll_btn * {	position:absolute; top:50%; left:50%; transform:translate(-50%, -50%); animation:crazy_text .5s ease-in Infinite Alternate; }

		@-webkit-keyframes crazy_text {
		  0% { top:45%; }
		  50% { top:55%; }
		  100% { top:45%; }
		}

		.p_content iframe{ -ms-zoom: 1.0; -moz-transform: scale(1.0); -moz-transform-origin: 0 0; -o-transform: scale(1.0); -o-transform-origin: 0 0; -webkit-transform: scale(1.0); -webkit-transform-origin: 0 0; transform: scale(1.0); transform-origin: 0 0; top:0px; left:0px; width:100%; height:100%; }

		.p_content2 iframe{ -ms-zoom: 0.2; -moz-transform: scale(0.2); -moz-transform-origin: 0 0; -o-transform: scale(0.2); -o-transform-origin: 0 0; -webkit-transform: scale(0.2); -webkit-transform-origin: 0 0; transform: scale(0.2); transform-origin: 0 0; top:0px; left:0px; width:500%; height:500%; }

		.p_content3 iframe{ -ms-zoom: 0.5; -moz-transform: scale(0.5); -moz-transform-origin: 0 0; -o-transform: scale(0.5); -o-transform-origin: 0 0; -webkit-transform: scale(0.5); -webkit-transform-origin: 0 0; transform: scale(0.5); transform-origin: 0 0; top: 0px; left: 0px; width: 200%; height: 200%; }
		/*resume*/
		.p_list_box{ display:table; position:absolute; height:100%; top:0; right:5%; color:#fff; font-size:30px; text-align:center; z-index:1000; }
		.p_list_box > div{ display:table-cell; vertical-align:middle; }
		.p_list{ margin:30px; }
		.p_list a{ display:block; width:100%; height:100%; }
		.p_list div:nth-child(2){ font-size:14px; }
		.p_list div:nth-child(3){ font-size:10px; }

		#long_content{ position:absolute; top:50%; right:5%; width:65%; height:60%; transform:translate(0%, -50%); font-family: 'Noto Sans KR', sans-serif; }
		#long_content *{ font-family: 'Noto Sans KR', sans-serif; word-break: break-word; white-space: normal; }
		
		.smallest_font{ font-size:12px; }
		.small_font{ font-size:14px; font-weight:200; }
		.middle_font{ font-size:18px; font-weight:600; }

		@media screen and (max-width: 768px) { 
			.smallest_font{ font-size:0.6em; }
			.small_font{ font-size:0.8em; font-weight:200; }
			.middle_font{ font-size:1em; font-weight:600; }
		}

	</style>

</head>

<body>

	<div id="page_box">
		<!--다음 스크롤 방향 알려주기-->
		<div id="scroll_btn">
			<div>S<br/>c<br/>r<br/>o<br/>l<br/>l</div>
		</div>
		<!--첫번째 페이지-->
		<div id="page_1st" class="inner_box">
			<div class="primary p_title">
				<div>PORTFOLIO</div>
				<div>WEB/ANDROID</div>
				<div>made by. Joeh</div>
			</div>
			<!--
			<div class="primary p_skill">
				<div style="font-weight:600;">WHAT CAN I DO?</div>
				<div style="padding-left:10%;">HTML</div>
				<div style="padding-left:60%;">CSS</div>
				<div style="padding-left:20%;">jQuery</div>
				<div style="padding-left:70%;">ajax</div>
				<div>반응형</div>
				<div style="text-align:right;">원페이지</div>
			</div>
			-->
			<div class="primary p_subtitle">
				<div class="p_subtitle_t">web portfolio</div>
			</div>

			<a style="position:absolute; top:47%;" href="http://rukaren.cafe24.com/lotto_sample.php">&nbsp;&nbsp;<i class="fas fa-long-arrow-alt-right"></i>&nbsp;lotto _for mobile</a>
			<div class="primary p_content">
				<iframe src="http://rukaren.cafe24.com/lotto_sample.php"></iframe>
			</div>
			<!-- <div class="primary p_content2">
				<iframe src="http://rukaren.cafe24.com/kyonggi_univ_home.php"></iframe>
			</div> -->
			<div class="primary p_content3">
				<iframe src="http://rukaren.cafe24.com/bussines_card.htm"></iframe>
			</div>
		</div>

		<!--두번째 페이지-->
		<div id="page_2nd" class="inner_box">
			<div class="primary p_title_2nd">
				<div>Ji Hyo Ham</div>
				<div>RESUME</div>
				<div style="background:#000; color:#fff">SIMPLE VERSION</div>
			</div>

			<div class="p_list_box">
				<div>

					<div class="p_list" id="p_info">
						<a onclick="add_p_content(this);">
						<div><i class="fas fa-chess-rook"></i></div> 
						<div>인적사항</div>
						<div>Personal<br/>Information</div>
						</a>
					</div>
					<div class="p_list" id="p_career">
						<a onclick="add_p_content(this);">
						<div><i class="fas fa-chess-queen"></i></div>
						<div>경력</div>
						<div>Career</div>
						</a>
					</div>
					<div class="p_list" id="p_edu">
						<a onclick="add_p_content(this);">
						<div><i class="fas fa-chess-pawn"></i></div>
						<div>교육</div>
						<div>Train/Education</div>
						</a>
					</div>
					<div class="p_list" id="p_skill">
						<a onclick="add_p_content(this);">
						<div><i class="fas fa-chess-knight"></i></div>
						<div>보유기술</div>
						<div>Skill</div>
						</a>
					</div>
					<div class="p_list" id="p_web">
						<a onclick="add_p_content(this);">
						<div><i class="fas fa-chess-king"></i></div>
						<div>WEB/ANDROID</div>
						<div>hatihatihatiho</div>
						</a>
					</div>
					<div class="p_list" id="p_and">
						<a onclick="add_p_content(this);">
						<div><i class="fas fa-chess-bishop"></i></div>
						<div>전체보기</div>
						<div>hatihatihatiho</div>
						</a>
					</div>

				</div>
			</div>

			<div id="long_content"></div>
		</div>
	</div>

	<div id="resume_box">
		
	</div>

</body>


<script>

var windowWidth = $( window ).width();
var windowHeight = $( window ).height();
var grid_num = [7,21,43,21,7];
var ran_num = [8,4,5,7,6];
var continue_change = true;
var continue_cnt = 0;
var page_cnt = 0;

function device_width(){
	$("body").css("min-height",windowHeight);
	$("#page_box").css("min-width",windowWidth-100);
	$("#page_1st").css("width","100%;");
	$("#page_1st").css("height","100%;");
	//$("#page_box").css("width", windowWidth);

	panels(grid_num);
}

function panels(grid_num){
	var panel = "";
	
	for(i=0; i<grid_num.length; i++){

		panel = '<div class="panel" style="width:'+grid_num[i]+'%;"></div>';

		$('#page_box').append(panel);
		paints($(".panel")[i]);
	}

}

function paints(panel){

	var paint = '<div class="paint"></div>';

	$(panel).append(paint);

}

$('body').on('mousewheel', function(e){
	scroll_event(e);
});

function scroll_event(e){
	if(continue_change != true) return;

	var speed = 12;
	var wheel;
	
	if(e.type == "mousewheel"){
		wheel = e.originalEvent.wheelDelta;
	}else{
		wheel = -e;
		speed = 6;
	}

	//스크롤값을 가져온다.
	if(wheel>0){ //스크롤 올릴때
		for(i=0; i<$(".paint").length; i++){
			showUp($(".paint")[i],ran_num[i]*(-1)/speed);
		}
		continue_change = true;

	} else { //스크롤 내릴때
		
		for(i=0; i<$(".paint").length; i++){
			showUp($(".paint")[i],ran_num[i]/speed);
		}
		continue_change = true;
		
	}

}

function showUp(slide,updown){
	var initial_h = 0;

	if(updown > 0 && $(slide).css("display") == "block"){ return; }

	if(updown < 0 && $(slide).css("display") == "none"){ return; }

	if(updown > 0){ 
		$(slide).css("display","block"); 
	}else{ 
		initial_h = 100; 
	}

	$(slide).css("height",initial_h);
	
	var height_change = setInterval(function(){
		//내용물 전환
		if(continue_change){
			content_change();
		}
		//내용물 전환 끝

		continue_change = false;

		initial_h += updown;
		
		$(slide).css("height",initial_h+updown+"%");

		if(initial_h+updown > 100 || initial_h+updown < 0){
			clearInterval(height_change);

			if(updown < 0){ $(slide).css("display","none"); }

			continue_cnt++;
			
			if(continue_cnt >= $(".panel").length){
				scroll_direction(updown);
				continue_change = true;
				continue_cnt=0;

				if(page_cnt==0){
					$($(".inner_box")[0]).css("display","none");
					$($(".inner_box")[1]).css("display","block");
					page_cnt+=1;
				}else{
					$($(".inner_box")[0]).css("display","block");
					$($(".inner_box")[1]).css("display","none");
					page_cnt-=1;
				}

			}
		}
		
	});
}

function scroll_direction(updown){

	if(updown<0){// 스크롤 올릴때
		$("#scroll_btn").html("<div>↓</div>");
	}else{// 스크롤 내릴때
		$("#scroll_btn").html("<div>↑</div>");
	}
}

// 내용물 전환
function content_change(){
	var content = $('.inner_box');

	for(i=0; i<content.length; i++){

		if($(content[i]).css("display") == "none"){
			$(content[i]).css("display", "block");

			var content_i = $(content[i]).children();
	
			for(j=0; j<content_i.length; j++){
				if($(content_i[j]).css("display") == "none"){

					$(content_i[j]).animate({
						width: 'toggle', display:'block'
					});

				}
			}


		}else{
			var content_i = $(content[i]).children();
	
			for(j=0; j<content_i.length; j++){
	
				$(content_i[j]).animate({
					width: 'toggle', display:'block'
				});
			}
			
		}

	}
}



// 모바일 터치
var startX,startY, endX,endY;

$("body").on('touchstart',function(event){
    startX = event.originalEvent.changedTouches[0].screenX;
    startY = event.originalEvent.changedTouches[0].screenY;
});

$("body").on('touchend',function(event){
    endX=event.originalEvent.changedTouches[0].screenX;
    endY=event.originalEvent.changedTouches[0].screenY;
	//console.log("startX : ",startX," startY : ",startY);

	if(startY-endY > 50 || startY-endY < -50){
		scroll_event(startY-endY);
	}else{
		startX,startY, endX,endY=0;
	}
});

function add_p_content(clicked){
	if($(".p_title_2nd").css("display") != "none"){

		$(".p_title_2nd").fadeOut();
		$($(clicked).parents(".p_list_box")[0]).animate({
			left: '-10px'
		},500);
		
		setTimeout(function(){
			$(".p_title_2nd").css("visibility","collapse");
		},500);
	
	}

	var data_id = $($(clicked).parent()[0]).attr("id");


	$.ajax({
            type : "POST", //전송방식을 지정한다 (POST,GET)
            url : "resume",//호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
            dataType : "html",//호출한 페이지의 형식이다. xml,json,html,text등의 여러 방식을 사용할 수 있다.
            error : function(){
                alert("통신실패!!!!");
            },
            success : function(Parse_data){
				$("#long_content").html(Parse_data);

				for(i=0; i<$("#long_content").children().length; i++){
					var tag_d = $("#long_content").children()[i]; 
					if(data_id != $(tag_d).attr("id")){
						$(tag_d).hide();
					}
				}

            }
             
     });
}

// 처음 들어왔을 때 화면 너비 재는 겸 판넬 생성
device_width();

</script>

</html>
