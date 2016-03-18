$(document).ready(function(){
	$("#side ul li a").hover(function(){
		$("#side ul li a").removeClass("active");
		$(this).addClass("active");
	});
});
function isNullOrBlankOrUD(value){
	if(value==null || value=="" || value== undefined){
		return true;
	}else{
		return false;
	}
}