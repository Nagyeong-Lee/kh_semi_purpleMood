<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Index</title>
<script src="https://code.jquery.com/jquery-3.6.1.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
	crossorigin="anonymous" />
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8"
	crossorigin="anonymous"></script>
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.css"
	rel="stylesheet" />
<style>
* {
	box-sizing: border-box;
}

.containers {
	overflow: hidden;
}

/* div {
	border: 1px solid black;
} */

/* header */
.header {
	height: 100px;
	background-color: white;
}

.searchbox {
	text-align: right;
}

.searchboxin {
	position: relative;
	top: 10%;
}

#searchtext {
	width: 90%;
}

.menuicon {
	text-align: center;
}

#menuicon:hover {
	cursor: pointer;
}

/* content */
.ottboxsec {
	margin-top: 50px;
	margin-bottom: 50px;
	text-align: center;
}

.ottbtn {
	height: 70px;
}

@media ( max-width : 800px) {
	.ottbtn {
		height: 50px;
	}
}

/* menu */
.offcanvas {
	height: 800px;
}

.offcanvas-body {
	text-align: center;
}

.profilebox {
	width: 150px;
	height: 150px;
	border-radius: 70%;
	overflow: hidden;
	position: relative;
	left: 30%;
	margin-bottom: 20px;
	margin-top: 30px;
}

.profile {
	width: 100%;
	height: 100%;
	object-fit: cover;
}

.profiletext {
	font-size: larger;
	margin-bottom: 10px;
}

.menulink {
	font-size: xx-large;
	margin-bottom: 50px;
	margin-top: 50px;
}

a {
	color: black;
	text-decoration: none;
}

button {
	border: none;
	border-radius: 5px;
}
</style>

</head>
<body>

	<div class="containers">
		<div class="row header fixed-top">
			<div class="col-12 col-md-7 col-lg-8" id="logo">
				<img src="" />
			</div>
			<div class="col-8 col-md-4 col-lg-3 searchbox">
				<input type="text" class="searchboxin" id="searchtext" onkeyup="enterkey()" name="searchtext"/> 
				<a href="/search.content?searchtext="+searchtext><i class="fa-solid fa-magnifying-glass searchboxin" id="searchbtn"></i></a>
			</div>
			<script>
	
			function enterkey() { //검색창에서 마우스 올린 후 엔터 누르면 바로 넘어가게 만드는 함수
				if (window.event.keyCode == 13) {
			location.href="/search.content?searchtext="+$("#searchtext").val(); 
	    			}
			}
			</script>

			<div class="col-4 col-md-1 col-lg-1 menuicon">
				<i class="fas fa-bars fa-2x" id="menuicon"
					data-bs-toggle="offcanvas"
					data-bs-target="#offcanvasWithBothOptions"
					aria-controls="offcanvasWithBothOptions"></i>
			</div>
		</div>
		<div class="row header"></div>

		<div class="row content">
			<div class="bannersec">
				<!-- col-12 cpl-md-12 d-none d-md-block -->
				<div id="carouselExampleIndicators"
					class="carousel slide m-0 border-0 " data-bs-ride="true">
					<div class="carousel-indicators">
						<button type="button" data-bs-target="#carouselExampleIndicators"
							data-bs-slide-to="0" class="active" aria-current="true"
							aria-label="Slide 1"></button>
						<button type="button" data-bs-target="#carouselExampleIndicators"
							data-bs-slide-to="1" aria-label="Slide 2"></button>
						<button type="button" data-bs-target="#carouselExampleIndicators"
							data-bs-slide-to="2" aria-label="Slide 3"></button>
					</div>
					<div class="carousel-inner">
						<div class="carousel-item active">
							<svg
								class="bd-placeholder-img bd-placeholder-img-lg d-block w-100"
								width="800" height="500" src="banner2.png"
								style="background-color: black" role="img"
								aria-label="Placeholder: Third slide"
								preserveAspectRatio="xMidYMid slice" focusable="false"></svg>
						</div>
						<div class="carousel-item">
							<svg
								class="bd-placeholder-img bd-placeholder-img-lg d-block w-100"
								width="800" height="500" src="banner2.png"
								style="background-color: black" role="img"
								aria-label="Placeholder: Third slide"
								preserveAspectRatio="xMidYMid slice" focusable="false"></svg>
						</div>
						<div class="carousel-item">
							<svg
								class="bd-placeholder-img bd-placeholder-img-lg d-block w-100"
								width="800" height="500" src="banner2.png"
								style="background-color: black" role="img"
								aria-label="Placeholder: Third slide"
								preserveAspectRatio="xMidYMid slice" focusable="false"></svg>
						</div>
					</div>
					<button class="carousel-control-prev" type="button"
						data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
						<span class="carousel-control-prev-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Previous</span>
					</button>
					<button class="carousel-control-next" type="button"
						data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
						<span class="carousel-control-next-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Next</span>
					</button>
				</div>
			</div>
			<div class="ottboxsec">
				<div class="row row-cols-3 row-cols-md-6">
					<div class="col">
						<a href="#"><button class="ottbtn w-75">net</button></a>
					</div>
					<div class="col">
						<a href="#"><button class="ottbtn w-75">wat</button></a>
					</div>
					<div class="col">
						<a href="#"><button class="ottbtn w-75">dis</button></a>
					</div>
					<div class="col">
						<a href="#"><button class="ottbtn w-75">cik</button></a>
					</div>
					<div class="col">
						<a href="#"><button class="ottbtn w-75">coc</button></a>
					</div>
					<div class="col">
						<a href="#"><button class="ottbtn w-75">net</button></a>
					</div>
				</div>
			</div>
			<div class="poster1">
				<div class="col-12 fs-1 titlename">최신영화</div>
				<div class="newmoviebox">
					<div>img</div>
				</div>
			</div>
			<div class="poster2">
				<div class="col-12 fs-1 titlename">최신영화</div>
			</div>
		</div>
	</div>

	<c:choose>
		<c:when test="${loginID!=null}">
			<!-- 로그인 -->
			<div class="offcanvas offcanvas-end" data-bs-scroll="true"
				tabindex="-1" id="offcanvasWithBothOptions"
				aria-labelledby="offcanvasWithBothOptionsLabel">
				<div class="offcanvas-header">
					<button type="button" class="btn-close" data-bs-dismiss="offcanvas"
						aria-label="Close"></button>
				</div>
				<div class="offcanvas-body">
					<div class="profilebox" id="Btn" style="background: #BDBDBD;"></div>
					<button type="button" id="profileBtn">
						<i class="fa-solid fa-pen"></i>
					</button>
					<div class="profiletext">${loginNickname }</div>
					<div class="profiletext">
						<button type="button" id="mypageBtn">마이페이지</button>
					</div>
					<a href="/boardList.board">
						<div class="menulink">영화 드라마 게시판</div>
					</a> <a href="#">
						<div class="menulink">자유게시판</div>
					</a> <a href="#">
						<div class="menulink">공지사항</div>
					</a>
					<button id="logoutBtn">로그아웃</button>
				</div>
				<script>
					$("#profileBtn").on(
							"click",
							function() {
								window.open("/profile.jsp", "",
										"width=400,height=300");
							})
					$("#logoutBtn").on("click", function() {
						location.href = "/logout.member";
					})
					$("#mypageBtn").on("click", function() {
						location.href = "/member/mypageMemInfo.jsp";
					})
				</script>
			</div>
		</c:when>
		<c:otherwise>
			<!-- 비로그인  -->
			<div class="offcanvas offcanvas-end" data-bs-scroll="true"
				tabindex="-1" id="offcanvasWithBothOptions"
				aria-labelledby="offcanvasWithBothOptionsLabel">
				<div class="offcanvas-header">
					<button type="button" class="btn-close" data-bs-dismiss="offcanvas"
						aria-label="Close"></button>
				</div>
				<div class="offcanvas-body">
					<div class="profilebox" style="background: #BDBDBD;"></div>
					<div class="profiletext">익명의 누군가</div>
					<div class="profiletext">
						<a href="/member/signin.jsp"><button>로그인 | 회원가입</button></a>
					</div>
					<a href="#">
						<div class="menulink">영화 드라마 게시판</div>
					</a> <a href="#">
						<div class="menulink">자유게시판</div>
					</a> <a href="#">
						<div class="menulink">공지사항</div>
					</a>
				</div>
			</div>
		</c:otherwise>
	</c:choose>
</body>
</html>