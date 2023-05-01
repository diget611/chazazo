<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Chazazo</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800' rel='stylesheet' type='text/css'>



<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/garoestate/assets/css/normalize.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/garoestate/assets/css/font-awesome.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/garoestate/assets/css/fontello.css">
<link href="<%=request.getContextPath()%>/resources/garoestate/assets/fonts/icon-7-stroke/css/pe-icon-7-stroke.css" rel="stylesheet">
<link href="<%=request.getContextPath()%>/resources/garoestate/assets/fonts/icon-7-stroke/css/helper.css" rel="stylesheet">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/garoestate/assets/css/bootstrap-select.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/garoestate/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/garoestate/assets/css/icheck.min_all.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/garoestate/assets/css/price-range.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/garoestate/assets/css/style.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/garoestate/assets/css/responsive.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/garoestate/assets/css/owl.carousel.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/garoestate/assets/css/owl.theme.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/garoestate/assets/css/owl.transitions.css">

<script src="<%=request.getContextPath()%>/resources/garoestate/assets/js/modernizr-2.6.2.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/garoestate/assets/js/jquery-1.10.2.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/garoestate/bootstrap/js/bootstrap.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/garoestate/assets/js/bootstrap-select.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/garoestate/assets/js/bootstrap-hover-dropdown.js"></script>
<script src="<%=request.getContextPath()%>/resources/garoestate/assets/js/easypiechart.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/garoestate/assets/js/jquery.easypiechart.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/garoestate/assets/js/wow.js"></script>
<script src="<%=request.getContextPath()%>/resources/garoestate/assets/js/icheck.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/garoestate/assets/js/owl.carousel.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/garoestate/assets/js/price-range.js"></script>
<script src="<%=request.getContextPath()%>/resources/garoestate/assets/js/main.js"></script>

<!-- Date Range Picker -->
<script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/main.css">

<style>
	.modal {
			position: absolute;
			top: 0;
			left: 0;

			width: 100%;
			height: 100%;

			display: none;

			background-color: rgba(0, 0, 0, 0.4);
	}
      
	.modal.show {
				display: block;
	}

	.modal_body {
				position: absolute;
				top: 50%;
				left: 50%;

				width: 400px;
				height: auto;

				padding: 10px;

				text-align: center;

				background-color: rgb(255, 255, 255);
				border-radius: 10px;
				box-shadow: 0 2px 3px 0 rgba(34, 36, 38, 0.15);

				transform: translateX(-50%) translateY(-50%);
	}
</style>
</head>
<body>
	<jsp:include page="/WEB-INF/views/base/header.jsp"/>
	
	<section>
		<div class="slider-area">
			<div class="slider">
				<div id="bg-slider" class="owl-carousel owl-theme">
					<div class="item">
						<img src="<%=request.getContextPath()%>/resources/garoestate/assets/img/slide1/cars.jpg" alt="GTA V">
					</div>
					<div class="item">
						<img src="<%=request.getContextPath()%>/resources/garoestate/assets/img/slide1/slider-image-2.jpg" alt="The Last of us">
					</div>
					<div class="item">
						<img src="<%=request.getContextPath()%>/resources/garoestate/assets/img/slide1/slider-image-1.jpg" alt="GTA V">
					</div>
				</div>
			</div>
			<div class="slider-content">
				<div class="row">
					<div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1 col-sm-12">
						<h2>property Searching Just Got So Easy</h2>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
							Eligendi deserunt deleniti, ullam commodi sit ipsam laboriosam
							velit adipisci quibusdam aliquam teneturo!</p>
					</div>
				</div>
			</div>
		</div>
		<div class="content-area home-area-1 recent-property" style="background-color: #FCFCFC; padding-bottom: 55px;">
			<div class="container">
				<div class="row">
					<div class="col-md-10 col-md-offset-1 col-sm-12 text-center page-title">
						<div class="search-form wow pulse" data-wow-delay="0.8s">
							<form action="" class=" form-inline">
								<div class="form-group">
									<div class="dc-flex align-items-center justify-content-start mb-1">
										<img class="icon mr-1" src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTYiIGhlaWdodD0iMTciIHZpZXdCb3g9IjAgMCAxNiAxNyIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGNsaXAtcGF0aD0idXJsKCN6OXRtdTNmem9hKSIgZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGZpbGw9IiNENEQ0RDQiPgogICAgICAgIDxwYXRoIGQ9Ik04IDIuNWE1IDUgMCAwIDAtNSA1YzAgMS4zNjguODA4IDMuMjY2IDEuOTEgNC44NTQuNTQ1Ljc4NCAxLjE0MiAxLjQ2MyAxLjcwOSAxLjk0QzcuMjA2IDE0Ljc4OSA3LjY4MyAxNSA4IDE1Yy4zMTcgMCAuNzk0LS4yMTIgMS4zODEtLjcwNS41NjctLjQ3OCAxLjE2NC0xLjE1NyAxLjcwOC0xLjk0MUMxMi4xOTIgMTAuNzY2IDEzIDguODY4IDEzIDcuNWE1IDUgMCAwIDAtNS01em0tNiA1YTYgNiAwIDEgMSAxMiAwYzAgMS42Ny0uOTQyIDMuNzcxLTIuMDkgNS40MjQtLjU4LjgzNi0xLjIzMyAxLjU4OC0xLjg4NSAyLjEzNkM5LjM5MyAxNS41OSA4LjY4MyAxNiA4IDE2Yy0uNjgzIDAtMS4zOTMtLjQwOS0yLjAyNS0uOTQtLjY1Mi0uNTQ5LTEuMzA1LTEuMy0xLjg4Ni0yLjEzNkMyLjk0MiAxMS4yNzIgMiA5LjE3IDIgNy41eiIvPgogICAgICAgIDxwYXRoIGQ9Ik04IDUuNWEyIDIgMCAxIDAgMCA0IDIgMiAwIDAgMCAwLTR6bS0zIDJhMyAzIDAgMSAxIDYgMCAzIDMgMCAwIDEtNiAweiIvPgogICAgPC9nPgogICAgPGRlZnM+CiAgICAgICAgPGNsaXBQYXRoIGlkPSJ6OXRtdTNmem9hIj4KICAgICAgICAgICAgPHBhdGggZmlsbD0iI2ZmZiIgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMCAuNSkiIGQ9Ik0wIDBoMTZ2MTZIMHoiLz4KICAgICAgICA8L2NsaXBQYXRoPgogICAgPC9kZWZzPgo8L3N2Zz4K">
										<label class="text-14 color-grey-4 mb-0">지역</label>
									</div>
									<select id="lunchBegins" class="selectpicker" data-live-search="true" data-live-search-style="begins" title="장소 선택 ">
										<option value="1">강남점</option>
										<option value="2">용산점</option>
										<option value="3">수원점</option>
										<option value="4">일산점</option>
										<option value="5">송도점</option>
									</select>
								</div>
								<div class="form-group mb-0">
									<div class="dc-flex align-items-center justify-content-start mb-1">
										<img class="icon mr-1" src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTYiIGhlaWdodD0iMTciIHZpZXdCb3g9IjAgMCAxNiAxNyIgZmlsbD0ibm9uZSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGNsaXAtcGF0aD0idXJsKCMwcXVhOHdkMzZhKSIgZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGZpbGw9IiNENEQ0RDQiPgogICAgICAgIDxwYXRoIGQ9Ik04IDIuNWE2IDYgMCAxIDAgMCAxMiA2IDYgMCAwIDAgMC0xMnptLTcgNmE3IDcgMCAxIDEgMTQgMCA3IDcgMCAwIDEtMTQgMHoiLz4KICAgICAgICA8cGF0aCBkPSJNOCA0LjVhLjUuNSAwIDAgMSAuNS41djMuNUgxMGEuNS41IDAgMCAxIDAgMUg4YS41LjUgMCAwIDEtLjUtLjVWNWEuNS41IDAgMCAxIC41LS41eiIvPgogICAgPC9nPgogICAgPGRlZnM+CiAgICAgICAgPGNsaXBQYXRoIGlkPSIwcXVhOHdkMzZhIj4KICAgICAgICAgICAgPHBhdGggZmlsbD0iI2ZmZiIgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMCAuNSkiIGQ9Ik0wIDBoMTZ2MTZIMHoiLz4KICAgICAgICA8L2NsaXBQYXRoPgogICAgPC9kZWZzPgo8L3N2Zz4K"><label class="text-14 color-grey-4 mb-0">날짜 및 시간</label>
									</div>
									<div class="col">
										<input class="form-control" value="2020-03-20" name="dates" placeholder="날짜 선택">
									</div>
								</div>
								<button class="btn search-btn" type="submit" style="width:130px; height:78px; margin-left:10px;"><i class="fa fa-search"></i>차량검색</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="count-area">
			<div class="container">
				<div class="row">
					<div class="col-md-10 col-md-offset-1 col-sm-12 text-center page-title">
						<h2>리뷰</h2> 
						${reviewList }
					</div>
				</div>
				<div class="row">
					<div class="col-md-12 col-xs-12 percent-blocks m-main" data-waypoint-scroll="true">
						<div class="row">
							<div class="col-sm-3 col-xs-6">
								<div class="count-item">
									<div class="count-item-circle">
										<span class="pe-7s-users"></span>
									</div>
									<div class="chart" data-percent="5000">
										<h2 class="percent" id="counter">1008</h2>
										<h5>HAPPY CUSTOMER </h5>
									</div>
								</div>
							</div>
							<div class="col-sm-3 col-xs-6">
								<div class="count-item">
									<div class="count-item-circle">
										<span class="pe-7s-home"></span>
									</div>
									<div class="chart" data-percent="12000">
										<h2 class="percent" id="counter1">1 300</h2>
										<h5>Properties in stock</h5>
									</div>
								</div> 
							</div> 
							<div class="col-sm-3 col-xs-6">
								<div class="count-item">
									<div class="count-item-circle">
										<span class="pe-7s-flag"></span>
									</div>
									<div class="chart" data-percent="120">
										<h2 class="percent" id="counter2">146</h2>
										<h5>City registered </h5>
									</div>
								</div> 
							</div> 
							<div class="col-sm-3 col-xs-6">
								<div class="count-item">
									<div class="count-item-circle">
										<span class="pe-7s-graph2"></span>
									</div>
									<div class="chart" data-percent="5000">
										<h2 class="percent" id="counter3">1023</h2>
										<h5>DEALER BRANCHES</h5>
									</div>
								</div> 
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="count-area">
			<div class="container">
				<div class="row">
					<div class="col-md-10 col-md-offset-1 col-sm-12 text-center page-title">
						<h2>통계</h2> 
					</div>
				</div>
				<div class="row">
					<div class="col-md-12 col-xs-12 percent-blocks m-main" data-waypoint-scroll="true">
						<div class="row">
							<div class="col-sm-3 col-xs-6">
								<div class="count-item">
									<div class="count-item-circle">
										<span class="pe-7s-users"></span>
									</div>
									<div class="chart" data-percent="5000">
										<h2 class="percent" id="counter">${reserv }</h2>
										<h5>누적 예약</h5>
									</div>
								</div>
							</div>
							<div class="col-sm-3 col-xs-6">
								<div class="count-item">
									<div class="count-item-circle">
										<span class="pe-7s-home"></span>
									</div>
									<div class="chart" data-percent="12000">
										<h2 class="percent" id="counter1">${review }</h2>
										<h5>사용자 리뷰</h5>
									</div>
								</div> 
							</div> 
							<div class="col-sm-3 col-xs-6">
								<div class="count-item">
									<div class="count-item-circle">
										<span class="pe-7s-flag"></span>
									</div>
									<div class="chart" data-percent="120">
										<h2 class="percent" id="counter2">${vehicle }</h2>
										<h5>예약 가능 차량</h5>
									</div>
								</div> 
							</div> 
							<div class="col-sm-3 col-xs-6">
								<div class="count-item">
									<div class="count-item-circle">
										<span class="pe-7s-graph2"></span>
									</div>
									<div class="chart" data-percent="5000">
										<h2 class="percent" id="counter3">${location }</h2>
										<h5>지점 수</h5>
									</div>
								</div> 
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<div class="modal">
		<div class="modal_body">
			<div id="content">
				
			</div>
			<button type="button" id="modalCloseBtn">확인</button>
		</div>		
	</div>
	<button type="button" id="chatBtn">테스트</button>
	
	<jsp:include page="/WEB-INF/views/base/footer.jsp"/>
	
	<script>
		$('#chatBtn').on('click', craeteRoom);
		
		function craeteRoom() {
			$.ajax({
				url: '${pageContext.request.contextPath}/chat/room',
				type: 'get',
				success: function(result) {
					if(result != '') {
						console.log(result);
						makeFrame(result);
					} else {
						console.log('방 생성 실패');
					}
				},
				error: function() {
					alert('에러');
				}
			})
		}
		
		function makeFrame(result) {
			var html = '<iframe src="${pageContext.request.contextPath}/chat/room/' + result + '" style="width:100%; height:300px">';
			$('#content').children().remove();
			$('#content').append(html);	
			$('.modal').css('display', 'block');
		}
		
		$('#modalCloseBtn').on('click', function() {
			$('.modal').css('display', 'none');
		});
		
	</script>
	
	<script>
		$('input[name="dates"]').daterangepicker();
	</script>
</body>
</html>