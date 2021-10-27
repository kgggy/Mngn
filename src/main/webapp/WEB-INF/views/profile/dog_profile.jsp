<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>멍이 프로필</title>
</head>
<body>

<section>
		<h1>멍이 프로필을 채워주세요.</h1>
	</section>
	<br> 멍이사진
	<br>
	<input type="file" name="" value="">
	<br>

	<form>
		<label> 멍이 <select name="dog">
				<optgroup label="소형견">
					<option>포메라니안(전문)</option>
					<option>비숑프리제(전문)</option>
					<option>푸들</option>
					<option>치와와</option>
					<option>닥스훈트</option>
					<option>말티즈</option>
					<option>시츄</option>
					<option>요크셔테리어</option>
				</optgroup>
				<optgroup label="중형견">
					<option>스피치</option>
					<option>시바견</option>
					<option>웰시코기</option>
					<option>프렌치불독</option>
					<option>비글</option>
				</optgroup>
				<optgroup label="대형견">
					<option>골든리트리버</option>
					<option>시베리안 허스키</option>
					<option>보더콜리</option>
					<option>사모예드</option>
					<option>버니즈마운틴</option>
					<option>잉글리쉬 불독</option>
				</optgroup>
				<p></p> 

		</select>
		<p></p>
		<br> 이름 <br> <input type = "text" name = "dog_name" placeholder="멍이 이름을 입력해주세요.">
		<br> 성별 <br> <input type = "radio" name = "sex" value = "male">수컷
					  <input type = "radio" name = "sex" value = "female">암컷
		<br> 나이 <br>     	  <input type = "text" name = "month" placeholder=" 살">
					  <input type = "text" name = "birth" placeholder=" ">
		<br> 몸무게 <br> <input type = "text" name = "weight" placeholder=" kg">
		<br> 중성화여부 <br> <input type = "radio" name = "neuter_check" value = "yes">Y
		 			  	 <input type = "radio" name = "neuter_check" value = "no">N
		<br> 특이사항 <br> <input type = "text" name = "" placeholder=" 이런부분 신경써 주셨으면 좋겠어요~.">
		
			
		</label>
	</form>

</body>
</html>