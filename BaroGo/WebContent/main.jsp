<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자판기 프로젝트</title>
</head>
<body>

	<h3>자판기 프로젝트</h3><br>
	
	<div id="main_box">
		<input type="button" id="cash" value="현금 결제" onclick="cash()">
		<input type="button" id="card" value="카드 결제" onclick="card()">
	</div><br>
	
	<div id="cash_box" style="display: none;">
		<input type="button" id="100" value="100" onclick="fn1()">
		<input type="button" id="500" value="500" onclick="fn2()">
		<input type="button" id="1000" value="1000" onclick="fn3()">
		<input type="button" id="5000" value="5000" onclick="fn4()">
		<input type="button" id="10000" value="10000" onclick="fn5()">
	</div><br>
	
	<div id="cash_total">
		투입 금액 : <input id="total" value="0" size="10" style="text-align: right;">원
		<input type="button" id="reset" value="거스름돈 반환" onclick="reset()">
		<br><br>
	</div>
	
	<div>
		<input type="button" id="cola" value="콜라 : 1100원" onclick="cola()">
		<input type="button" id="water" value="물 : 600원" onclick="water()">
		<input type="button" id="coffee" value="커피 : 700원" onclick="coffee()">
	</div>
	<br>
	
	<div id="card_total" style="display: none;">
		총 결제 금액 : <input id="card_total_pay" value="-" size="10" style="text-align: right;">원
		<input type="button" id="card_pay" value="결제 완료" onclick="card_pay()">
		<input type="button" id="card_reset" value="결제 취소" onclick="reset()">
	</div>
	
	<script>
		var money = 0;
		var card_money = "-";
		
		// 현금 결제 선택
		function cash() {
			document.getElementById("main_box").style.display = "none";
			document.getElementById("cash_box").style.display = "block";
		}
		
		// 100원
		function fn1() {
			money = parseInt(total.value) + 100;
			total.value = money;
		}
		
		// 500원
		function fn2() {
			money = parseInt(total.value) + 500;
			total.value = money;
		}
		
		// 1000원
		function fn3() {
			money = parseInt(total.value) + 1000;
			total.value = money;
		}
		
		// 5000원
		function fn4() {
			money = parseInt(total.value) + 5000;
			total.value = money;
		}
		
		// 10000원
		function fn5() {
			money = parseInt(total.value) + 10000;
			total.value = money;
		}
		
		// 카드 결제 선택
		function card() {
			document.getElementById("main_box").style.display = "none";
			document.getElementById("cash_total").style.display = "none";
			document.getElementById("card_total").style.display = "block";
			document.getElementById("cash_box").style.display = "none";
			
			card_money = 0;
			card_total_pay.value = card_money;
		}
		
		// 카드 결제 완료
		function card_pay() {
			alert("총 " + card_money + "원의" + " 카드 결제가 완료되었습니다.");
			reset();
		}
		
		// 거스름돈 반환, 카드결제 취소
		function reset() {
			money = 0;
			total.value = 0;
			
			card_money = "-";
			card_total_pay.value = "-";
			
			document.getElementById("main_box").style.display = "block";
			document.getElementById("cash_total").style.display = "block";
			document.getElementById("card_total").style.display = "none";
			document.getElementById("cash_box").style.display = "none";
		}
		
		// 콜라 선택
		function cola() {
			if(money != '0') {
				if(money < 1100) {
					alert("잔액이 부족합니다.");
					return;
				}
				money = parseInt(total.value) - 1100;
				total.value = money;
			}
			if(card_total_pay.value >= 0) {
				card_money = parseInt(card_total_pay.value) + 1100;
				card_total_pay.value = card_money;
			}
		}
		
		
		// 물 선택
		function water() {
			if(money != '0') {
				if(money < 600) {
					alert("잔액이 부족합니다.");
					return;
				}
				money = parseInt(total.value) - 600;
				total.value = money;
			}
			if(card_total_pay.value >= 0) {
				card_money = parseInt(card_total_pay.value) + 600;
				card_total_pay.value = card_money;
			}
		}
		
		// 커피 선택
		function coffee() {
			if(money != '0') {
				if(money < 700) {
					alert("잔액이 부족합니다.");
					return;
				}
				money = parseInt(total.value) - 700;
				total.value = money;
			}
			if(card_total_pay.value >= 0) {
				card_money = parseInt(card_total_pay.value) + 700;
				card_total_pay.value = card_money;
			}
		}
	</script>

</body>
</html>