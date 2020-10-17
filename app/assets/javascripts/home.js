
$(function() {
	$('#nav_btn a.next').on("click", function(){
	  $('#slide:not(:animated)').animate({
			'margin-left' : -1*$('#slide li').width()
		},function(){
			$('#slide').append($('#slide li:first-child'));
			$('#slide').css('margin-left','0');
		});
	});
})
