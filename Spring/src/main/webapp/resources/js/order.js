/**
 * 
 */

$(document).ready(function() {
	$("#order").click(function() {
		var id = Session["userId"];
		
		if(id == null) {
			alert("로그인을 해주세요.")
			$("a").href("/account/login");
		}
	})
})