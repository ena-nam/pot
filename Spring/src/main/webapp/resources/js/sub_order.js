/**
 * 
 */

$(document).ready(function() {
	
	$("input[name='orderTerm']").click(function() {
		total(); // function total();
	})

	// 개월수에 따른 값
	function total() {
		var a = $("input[name='orderTerm']:checked").val();

		(a=="1개월")?month=15000:
		(a=="3개월")?month=30000:
		(a=="6개월")?month=50000:month=20000;
		
		shipping();	// function shipping();
		var b = Number($("#ship").val());
		
		$("#total").html(month+b);
		$("#total2").val(month+b);
	}
	
	// 배송비 계산 함수
	function shipping() {
		var a = $("input[name='orderTerm']:checked").val();
		var b = 0;
		(a=="1개월" || a=="정기구독")?b=2500:b=0;
		$("#ship").val(b);
		$("#shipping").html(b);
	}
	
	// 버튼 수량 갯수 변경
	$("button").click(function() {
		// 각 버튼 갯수들의 id는 plus1, plus2, plu3 / minus1, minus2, minus3으로 이루어져 있다.
		// last는 각 id의 맨 마지막 '숫자'만을 잘라내어 어느 버튼을 눌렀는지 구분한다.
		var last = $(this).val().substring(($(this).val().length)-1, $(this).val().length);
		
		// 각 버튼은 plus와 minus로 구분한다.
		// text는 각 id의 맨 마지막 숫자를 제외한 나머지 글자를 저장한다.
		var text = $(this).val().substring(0, ($(this).val().length)-1);
		
		plus(last, text);	//function plus(last, text)
		
		// 위의 plus 함수로 변경된 숫자의 값을 가져온다.
		var amount = Number($("#plus"+last).val());
		
		// 만일 변경된 값이 0보다 크다면 -버튼은 활성화가 되지만
		// 그렇지 않을 경우 -버튼을 비활성화시킨다.
		if (amount > 0) {
			$("#minus"+last).attr('disabled', false)
		} else {
			$("#minus"+last).attr('disabled', true)
		}
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

	function price(last, amount, text) {
		var a = 0;
		(last=="1")?a=10000:
		(last=="2")?a=8000:
		(last=="3")?a=11000:a=0;
		
		var b = Number($("#total").html());
		
		if (text == "minus") {
			if(amount > 0) {	// 갯수가 0보다 크면
				b -= a;	// 총금액=총금액-화병의 가격.
			} else if (amount == 0) {	// 갯수가 0이면
				b-=a;
			}	
		} else {
			b += a;
		}
		
		$("#total").html(b);
		$("#total2").val(b);
	}

})