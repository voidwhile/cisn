jQuery(document).ready(function() {
	$('.m_selectpicker').selectpicker();
});
function paperChange() {
	var paperId = $("#sl-paper").selectpicker("val");
	window.location.href = path + "/test.do?paperId=" + paperId;
}
function radioClick(id,answer){
	var std = $("#hid-std-single-"+id).val();
	if(answer!=std){
		swal("回答错误","正确答案是："+std, "error");
	}
}
function checkClick(aid,id,answer){
	if($("#chk-"+aid).prop("checked")){
		var flag = false;
		$("body").find("input[name='hid-std-multiple-"+id+"']").each(function(){
			var val = $(this).val();
			if(val==answer){
				flag = true;
			}
		});
		if(!flag){
			swal(answer+"选项错误","", "error");
		}
	}
}
