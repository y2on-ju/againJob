<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib prefix="c" uri="jakarta.tags.core" %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>대분류 선택</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<style>
h1 {
	color: gray;
	text-align: center;
	margin-top: 100px;
	font-size:70px;
}

h5 {
	color: gray;
	text-align: center;
	margin-left: 230px;
}

button {
	width: 400px;
	height: 400px;
	display: flex;
	justify-content: center;
	align-items: center;
}

.category {
	margin: 80px 20px 20px 150px;
}

.btn {
	font-size: 80px;
}

.dropdown-menu {
	font-size: 30px;
}
option{
	font-size: 40px;
}
</style>
</head>
<body>

	<h1>다시 JOB</h1>
	<h5>(잡)을 수 있어!</h5>

	<br />
	<div class="category">
		<div class="btn-group">
			<button class="btn btn-secondary btn-lg" type="button"  aria-expanded="true">직종
			<select class="form-select form-select-lg mb-3" aria-label=".form-select-lg example">
				<option selected>선택해주세요</option>
				<option value="1">경영.사무.금융</option>
				<option value="2">농림어업직</option>
				<option value="3">영업.판매.운송</option>
			</select>
			</button>
		</div>

		<div class="btn-group">
			<button class="btn btn-warning btn-lg" type="button"  aria-expanded="true">지역
			<select class="form-select form-select-lg mb-3" aria-label=".form-select-lg example">
				<option selected>선택해주세요</option>
				<option value="1">서울</option>
				<option value="2">경기도</option>
				<option value="3">인천</option>
			</select>
			</button>

		</div>

		<div class="btn-group">
			<button class="btn btn-light btn-lg" type="button"  aria-expanded="true">학력
			<select class="form-select form-select-lg mb-3" aria-label=".form-select-lg example">
				<option selected>선택해주세요</option>
				<option value="1">고졸</option>
				<option value="2">대졸</option>
				<option value="3">학력무관</option>
			</select>
			</button>
		</div>

		<div class="btn-group">
			<button class="btn btn-success btn-lg" type="button"  aria-expanded="true">경력
			<select class="form-select form-select-lg mb-3" aria-label=".form-select-lg example">
				<option selected>선택해주세요</option>
				<option value="1">신입</option>
				<option value="2">경력 5년 미만</option>
				<option value="2">경력 5년 이상</option>
				<option value="3">관계없음</option>
			</select>
			</button>
		</div>
	</div>
	
	<div class="d-grid gap-2 col-6 mx-auto" style="display:flex; justify-content:center;">
  <button class="btn btn-primary" type="button" style="height: 50px; width:300px; font-size:30px; display:flex; justify-content:center;" onclick="location.href='/'">완료</button>
</div>


	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.4/jquery.min.js" integrity="sha512-pumBsjNRGGqkPzKHndZMaAG+bir374sORyzM3uulLV14lN5LyykqNk8eEeUlUkB3U0M4FApyaHraT65ihJhDpQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
</body>
</html>