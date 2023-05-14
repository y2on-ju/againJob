<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib prefix="c" uri="jakarta.tags.core" %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1">
<title>채용공고</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<style>

.pageStyle{
	margin: 50px;
}

#head {
	width: 100px;
	height: 100px;
	font-size: 50px;
	
}

#body {
	width: 300px;
	height: 300px;
	font-size: 50px;
	text-align: center;
	
}

#contents {
	width:500px;
}



</style>

</head>
<body>

<div class="pageStyle">
<h1> 채용공고</h1>

<table class="table table-striped">
	<thead>
		<tr id="head">
			<th>#</th>
			<th>제목</th>
			<th>채용내용</th>
			<th>기업정보</th>
			<th>마감날짜</th>
		</tr>
	</thead>
	<tbody>
	<c:forEach items="${boardList.boardList}" var="board">
	<tr id="body">
		<td>${board.id }</td>
		<td>${board.title }</td>
		<td id="contents">${board.body }</td>
		<td>${board.writer }</td>
		<td>${board.inserted }</td>
	</tr>
	</c:forEach>
	</tbody>
</table>
</div>





<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.4/jquery.min.js" integrity="sha512-pumBsjNRGGqkPzKHndZMaAG+bir374sORyzM3uulLV14lN5LyykqNk8eEeUlUkB3U0M4FApyaHraT65ihJhDpQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
</body>
</html>