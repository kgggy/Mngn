<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>


<head>   
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Ajax 기본적인 통신방법</title>
 
<script type="text/javascript" language="javascript">
 
    $(document).ready(function(){
    	
        $.ajax({
            type : "POST", //전송방식을 지정한다 (POST,GET)
            url : "https://script.google.com/macros/s/AKfycbwl3aX0yrFj3ZdHh7trgA8Thk56owD9e8YcOW6-Kwk5FyXpUhoJViw7f-z1i-kxpys/exec?sheetName=trainerpaper",//호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
            dataType : "json",//호출한 페이지의 형식이다. xml,json,html,text등의 여러 방식을 사용할 수 있다.
            error : function(){
                alert("통신실패!!!!");
            },
            success : function(Parse_data){
                $("#Parse_Area").html(Parse_data); //div에 받아온 값을 넣는다.
                alert("통신 데이터 값 : " + Parse_data);
            }
             
        });
    });
 
</script>
 
</head>
<body>
    <div id="Parse_Area"gt;lt;/div>
</body>
</html>