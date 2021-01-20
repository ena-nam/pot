/**
 * 
 */

$(document).ready(function() {
	
	$("input[name='orderSize']").click(function() {
		size(); // function size();
	})

	// 크기에 따른 값
	function size() {
		var a = $("input[name='orderSize']:checked").val();

		(a=="소형")?size=15000:
		(a=="중형")?size=30000:size=50000;
		
		shipping();	// function shipping();
		var b = Number($("#ship").val());
		
		$("#total").html(size+b);
		$("#total2").val(size+b);
	}
	
	// 배송비 계산 함수
	function shipping() {
		var a = $("input[name='orderSize']:checked").val();
		var b = 0;
		(a=="소형")?b=2500:b=0;
		$("#ship").val(b);
		$("#shipping").html(b);
	}
	
	// 버튼 수량 갯수 변경
	$("button").click(function() {
		var last = $(this).val().substring(($(this).val().length)-1, $(this).val().length);
		var text = $(this).val().substring(0, ($(this).val().length)-1);
		plus(last, text);	//function plus(last, text)
	})
	
	// 추가 물품
	function plus(last, text) {
		// last는 마지막 숫자, text는 plus-minus를 구분
		
		if (text == "minus") {
			var amount = Number($("#plus"+last).val());
			// amount(갯수)의 값이 0보다 크다면 그 숫자에 -1, 0과 같거나 작다면 0으로 유지.
			amount>0?amount-=1:amount=0;
			$("#plus"+last).val(amount);
		} else if (text == "plus") {
			var amount = Number($("#plus"+last).val());
			amount += 1;
			$("#plus"+last).val(amount);
		}
		
		price(last, amount, text);	// function price(last, amount, text);
	}
	
	var c = false;
	
	function price(last, amount, text) {
		var a = 0;
		(last=="1")?a=10000:
		(last=="2")?a=8000:
		(last=="3")?a=11000:a=0;
		
		var b = Number($("#total").html());
		

		if (text == "minus") {
			if(amount > 0) {
				b -= a;	
			} else if (amount == 0 && !c) {
				b-=a;
				c=true;
			}
			
		} else {
			b += a;
		}
		
		$("#total").html(b);
		$("#total2").val(b);
	}

})