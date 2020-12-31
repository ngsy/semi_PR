<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/header.jsp"%>


<div class="card shadow mb-4">
	<div class="card-header py-3">


		<h2 class="mb-3" align="center">가게등록</h2>
		<!-- 헤더부분 -->
	</div>


	<div class="card-body">


			<form id="shopInsertForm" action="insert.th" method="post" enctype="multipart/form-data">
                    <input type="hidden" name="writer" value="">
			<input type="hidden" name="region1"> <input type="hidden"name="region2"> <input type="hidden" name="lat"> <input
				type="hidden" name="lon">

			<table align="center" class="table" style="width: 800px; margin-top:auto;">
				<tbody>
					<tr>
						<td>가게상호</td>
						<!-- required : 필수 -->
						<td><input type="text" class="form-control" maxlength="10"
							name="shopName" required></td>
						
					</tr>
					<br>
					<tr>
						<td width="200px"><label class="form-label">가게소개</label></td>
						<td><textarea type="text" class="form-control"
								maxlength="300" name="shopcategory" style="height: 200px"
								required></textarea></td>

					</tr>

					<br>

					<tr>
						<td>연락처</td>
						<td><input type="tel" class="form-control" maxlength="11"
							name="phone" placeholder="(-없이)01022222222"></td>
						
					</tr>

					<tr>
						<td>내 상호위치 조회</td>


						<td id="locationTd"><label id="region1La"></label><label
							id="region2La"></label>
						<button class="btn btn-primary" id="locationBtn">조회</button>
						</td>
					</tr>
					<tr>
						<td><label class="form-label">상세주소 </label></td>
						<td><input type="text" class="form-control" maxlength="30"
							name="shopdetaillocation" required></td>

					</tr>
					<br>
					<br>

					<tr>
						<td>가게이미지</td>
						<td></td>

					</tr>
				</tbody>
			</table>

			<div id=imgarea style="margin-left: 42%;">

				<td><img id="contentImg1" width="150" height="120"></td>
				<td><img id="contentImg2" width="150" height="120"></td>
				<td><img id="contentImg3" width="150" height="120"></td>
			</div>





			<div id="fileArea">
				<input type="file" name="file1" id="file1"
					onchange="loadImg(this, 1);"> <input type="file"
					name="file2" id="file2" onchange="loadImg(this, 2);"> <input
					type="file" name="file3" id="file3" onchange="loadImg(this, 3);">
				<input type="file" name="file4" id="file4"
					onchange="loadImg(this, 4);">
			</div>
			<br>
			<br>



			<div align="center">


				<button type="submit" class="btn btn-primary btn-primary"
					id="joinBtn" disabled>가입하기</button>

			</div>

		</form>


	</div>
	<!-- 바디부분 끝 -->
</div>
<!-- 카드 끝 -->


<script>
	$(function() {
		$("#fileArea").hide();
	
		$("#contentImg1").click(function() {
			$("#file2").click();
		});
		$("#contentImg2").click(function() {
			$("#file3").click();
		});
		$("#contentImg3").click(function() {
			$("#file4").click();
		});
	});

	function loadImg(inputFile, num) {// 이미지 미리보기 
		//inputFile : 현재 변화가 생긴 input type = "file"
		//num : 조건문을 활용 하기 위해 전달받은 매개변수

		console.dir(inputFile);

		if (inputFile.files.length == 1) {//file이 존재 할경우 
			var reader = new FileReader();// 파일을 읽어들이 FileReader객체를 생성 

			reader.readAsDataURL(inputFile.files[0]);//파일을 읽어주는 메소드  --> 해당 파일을 읽어서 url을 부여 (문자열로 저장 )

			reader.onload = function(e) {//파일 읽기가 다완료 되면 실행할 메소드 
				switch (num) {

	
				case 1:
					$("#contentImg1").attr("src", e.target.result);
					break;
				case 2:
					$("#contentImg2").attr("src", e.target.result);
					break;
				case 3:
					$("#contentImg3").attr("src", e.target.result);
					break;
				}
			};

		}
	}
</script>



<script>
	$(function() {
		$("#locationBtn")
				.on(
						"click",
						function(e) {
							e.preventDefault();
							var lat = 0.0;
							var lon = 0.0;
							navigator.geolocation
									.getCurrentPosition(function(position) {

										lat = position.coords.latitude; //위도 
										lon = position.coords.longitude; //경도

										console.log(lat);
										console.log(lon);

										$
												.ajax({ //행정구역명 알아오기

													url : "https://dapi.kakao.com/v2/local/geo/coord2regioncode",
													dataType : "json",
													headers : {
														'Authorization' : 'KakaoAK 59be782aa73b67df6a17a930e63d057d'
													},
													data : {

														x : lon,
														y : lat
													},
													type : "get",
													success : function(obj) {

														if (obj.documents.length != 0) {

															var region1 = obj.documents[0].region_2depth_name;
															var region2 = obj.documents[0].region_3depth_name;

															$("#region1La")
																	.css(
																			"margin-right",
																			"10px");
															$("#region2La")
																	.css(
																			"margin-right",
																			"10px");

															$("#region1La")
																	.text(
																			region1);
															$("#region2La")
																	.text(
																			region2);

															$(
																	"input[name=region1]")
																	.attr(
																			"value",
																			region1);
															$(
																	"input[name=region2]")
																	.attr(
																			"value",
																			region2);

															console
																	.log("region1"
																			+ region1);
															console
																	.log("region2"
																			+ region2);

														}

													},
													error : function() {
														alert("위치정보 조회 실패");
													}

												}); //ajax1

										$
												.ajax({ //좌표계 변환하기

													url : "https://dapi.kakao.com/v2/local/geo/transcoord",
													dataType : "json",
													headers : {
														'Authorization' : 'KakaoAK 59be782aa73b67df6a17a930e63d057d'
													},
													data : {

														x : lon,
														y : lat,
														input_coord : "WGS84",
														output_coord : "WTM"
													},
													type : "get",
													success : function(obj) {

														if (obj.documents.length != 0) {

															var x = obj.documents[0].x;
															var y = obj.documents[0].y;

															$("input[name=lat]")
																	.attr(
																			"value",
																			y);
															$("input[name=lon]")
																	.attr(
																			"value",
																			x);

														}

													},
													error : function() {
														alert("위치정보 변환 실패");
													}

												}); //ajax2

									}); //navigator

						}); //event
	});
</script>






<%@ include file="../common/footer.jsp"%>

