$(function(){

		$('#nav-userInfo').click(function(){
			var target= $('#nav-dropdown');
			if(target.is(":hidden")){
				target.show();
			}else{
				target.hide();
			}
		})


		$('#nav-list > li.hasChild').click(function(){
			var target = $(this).children('ul');
			if(target.is(":hidden")){
				target.show();
				$(this).addClass('open');
			}else{
				target.hide();
				$(this).removeClass('open');
			}
		})

		$($('.submenu > .active').parents()[1]).addClass('open').addClass('active');


	
})