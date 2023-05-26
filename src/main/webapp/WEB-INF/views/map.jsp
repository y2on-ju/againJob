<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib prefix="c" uri="jakarta.tags.core" %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1">
<title>구글 지도 구현</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />


<script defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAiNaoMYRgr3hqizXilalo8M9Ui5Wtcx-k&callback=initMap"></script>
<script>
window.initMap = function () {
	  const map = new google.maps.Map(document.getElementById("map"), {
	    center: { lat: 37.5400456, lng: 126.9921017 },
	    zoom: 10,
	  });
	  
	  const malls = [
		    { label: "A", name: "학원", lat: 37.5565179, lng: 126.9451614 }
		  
		  ];

//		  const bounds = new google.maps.LatLngBounds();
		  const infoWindow = new google.maps.InfoWindow();

		  malls.forEach(({ label, name, lat, lng }) => {
		    const marker = new google.maps.Marker({
		      position: { lat, lng },
		      label,
		      map
		    });
	//	    bounds.extend(marker.position);

		    marker.addListener("click", () => {
		      map.panTo(marker.position);
		      infoWindow.setContent(name);
		      infoWindow.open({
		        anchor: marker,
		        map
		      });
		    });
		  });

		  map.fitBounds(bounds);
		};
		
		
		

	
</script>

</head>
<body>

	<div id = "map" style="height: 600px;"></div>
	<h1>지도 나타내는 중 테스트 중 </h1>
	<br>
	<h2> A는 중앙학원</h2>
	
	
	
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.4/jquery.min.js" integrity="sha512-pumBsjNRGGqkPzKHndZMaAG+bir374sORyzM3uulLV14lN5LyykqNk8eEeUlUkB3U0M4FApyaHraT65ihJhDpQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
</body>
</html>