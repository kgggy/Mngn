<html>
<head>

<title> WebStandard example</title> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">              
<script language="javascript" type="text/javascript" src="https://stdpay.inicis.com/stdjs/INIStdPay.js" charset="UTF-8"></script>      
</head>

 <body>

   <form id="SendPayForm_id" name="" method="POST" >

        <input type="text"    name="goodname" value="테스트" >
        <input type="text"    name="buyername" value="홍길동" >
        <input type="text"    name="buyertel" value="010-1234-5678" >
        <input type="text"    name="buyeremail" value="test@inicis.com" >
        <input type="text"    name="price" value="1000" >
        <input type="hidden"  name="mid" value="INIpayTest" ><!-- 에스크로테스트 : iniescrow0, 빌링(정기과금)테스트 : INIBillTst -->
        <input type="hidden"  name="gopaymethod" value="Card" >
        <input type="hidden"  name="mKey" value="3a9503069192f207491d4b19bd743fc249a761ed94246c8c42fed06c3cd15a33" >
        <input type="hidden"  name="signature" value="e0702a7afbdec4a85786d76c84156ef2ada52be11268f45c91d73993558d3c0b" >
        <input type="hidden"  name="oid" value="INIpayTest_1634801325573" >
        <input type="hidden"  name="timestamp" value="1634801325573" >
        <input type="hidden"  name="version" value="1.0" >
        <input type="hidden"  name="currency" value="WON" >
        <input type="hidden"  name="acceptmethod" value="below1000" ><!-- 에스크로옵션 : useescrow, 빌링(정기과금)옵션 : BILLAUTH(Card) -->
        <input type="hidden"  name="returnUrl" value="http://localhost/stdpay/INIStdPayReturn_simple.asp" >
        <input type="hidden"  name="closeUrl" value="http://localhost/stdpay/close.asp" >

   </form>

      <button onclick="INIStdPay.pay('SendPayForm_id')" style="padding:10px; margin-left:10%">결제요청</button>

 </body>
</html>

			

		    