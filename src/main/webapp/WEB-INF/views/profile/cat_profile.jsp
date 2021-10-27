<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>냥이 프로필</title>
</head>
<body>
	<section>
		<h1>냥이 프로필을 채워주세요.</h1>
	</section>
	<br> 냥사진
	<br>
	<input type="file" name="" value="">
	<br>

	<form>
		<label> 냥이 <select name="cat">
				<optgroup label="고양이">
					<option>먼치킨</option>
					<option>랙돌</option>
					<option>러시안블루</option>
					<option>폴드</option>
					<option>엑죠틱</option>
					<option>벵갈</option>
					<option>페르시안</option>
					<option>노르웨이숲</option>
					<option>아비시니안</option>
					<option>샴</option>
				</optgroup>
				
				<p></p> 

		</select>
		<p></p>
		<br> 이름 <br> <input type = "text" name = "cat_name" placeholder="냥이 이름을 입력해주세요.">
		<br> 성별 <br> <input type = "radio" name = "sex" value = "male">수컷
					  <input type = "radio" name = "sex" value = "female">암컷
		<br> 나이 <br> <input type = "radio" name = ""> 개월 수 입력
			         <input type = "text" name = "birth" placeholder=" 살">
		<br> 몸무게 <br> <input type = "text" name = "weight" placeholder=" kg">
		<br> 중성화여부 <br> <input type = "radio" name = "neuter_check" value = "yes">Y
		 			  	 <input type = "radio" name = "neuter_check" value = "no">N
		<br> 특이사항 <br> <input type = "text" name = "" placeholder=" 이런부분 신경써 주셨으면 좋겠어요~">
		
			
		</label>
	</form>
	
	<input type = "submit" value ="이전">
	<input type = "submit" value ="완료">
		
</body>
</html>