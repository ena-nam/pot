/**
 * 
 */

$(document).ready(function() {
	var str = "";
	
	// 아이디 길이 체크
	$("#id").blur(function() {
		var id = $("#id").val().length;
		
		if (id < 4 || id > 13) {
			$("#idalert").remove();
			str = "<span id='idalert'> 아이디는 4자 이상, 12자 이하로 써주세요. </span>"
			$("#idbox").append(str);
			$("#idalert").css("color", "red").css("margin-left", "10px");
		} else {
			$("#idalert").remove();
		}
	})
	
	// 비밀번호 길이 체크
	$("#pw").blur(function() {
		var pw = $("#pw").val().length;
		
		if (pw < 8 || pw > 20) {
			$("#pwalert").remove();
			str = "<span id='pwalert'> 비밀번호는 8자 이상, 20자 이하로 써주세요. </span>"
			$("#pwbox").append(str);
			$("#pwalert").css("color", "red").css("margin-left", "10px");
		} else {
			$("#pwalert").remove();
		}
	})
	
	// 비밀번호 일치 확인
	$("#pw2").blur(function() {
		var pw = $("#pw").val();
		var pw2 = $("#pw2").val();
		
		if (pw != pw2) {
			$("#pw2alert").remove();
			str = "<span id='pw2alert'> 비밀번호가 일치하지 않습니다. </span>"
			$("#pwbox2").append(str);
			$("#pw2alert").css("color", "red").css("margin-left", "10px");
		} else {
			$("#pw2alert").remove();
		}
	})
	
	// 생년월일
	$("#dd").blur(function() {
		var yy = $("#yy").val();
		var mm = $("#mm").val();
		var dd = Number($("#dd").val());
		
		// 일이  1~9일 경우 01~09로 더하기
		if (dd > 0 && dd < 10) {
			dd = "0"+dd;
		}
		
		var a = yy+mm+dd;
		
		$("#birth").val(a);
	})
	
	// 필요한 데이터가 전부 입력되었다면 submit을 진행한다
	$("form").on("submit", function() {
		var id = $("#id").val().length;
		var pw = $("#pw").val().length;
		var pw = $("#pw").val();
		var pw2 = $("#pw2").val();
		var name = $("#name").val();
		var birth = $("#birth").val();
		
		if (id < 4 || id > 13) {
			alert("아이디가 잘못되었습니다.")
			return false;
		} else if (pw < 8 || id > 20) {
			alert("비밀번호가 잘못되었습니다.")
			return false;
		} else if (pw != pw2) {
			alert("비밀번호가 일치하지 않습니다.")
			return false;
		} else if (name == null) {
			alert("이름을 입력해주세요.")
			return false;
		} else if (birth == null) {
			alert("생년월일을 입력해주세요.")
			return false;
		} else {
			return true;
		}
	})
})