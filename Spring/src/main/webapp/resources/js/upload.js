/**
 * 
 */

$(document).ready(function() {
	$("input[type='file']").change(function(e) {
		var formData = new FormData();
		var inputFile = $("input[name='pimage']");
		var files = inputFile[0].files;
		
		$.ajax({
			url : "/upload/uploadFormAction",
			data : formData,
			dataType : "json",
			processData : false,
			contentType : false,
			type : 'POST',
			success : function(data) {
				alert("등록 완료")
				console.log(data);
			}
		})
	})

})