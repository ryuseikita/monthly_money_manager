$(document).on('turbolinks:load', function() {
						   

	//----------Select the first tab and div by default
	
	$('#vertical_tab_nav > ul > li > a').eq(0).addClass( "selected" );
	$('#vertical_tab_nav > div > article').eq(0).css('display','block');


	//---------- This assigns an onclick event to each tab link("a" tag) and passes a parameter to the showHideTab() function
			
		$('#vertical_tab_nav > ul > li > a').click(function(){
			
			/*Handle Tab Nav*/
			$('#vertical_tab_nav > ul > li > a').removeClass( "selected");
			$(this).addClass( "selected");
			
			/*Handles Tab Content*/
			var clicked_index = $('#vertical_tab_nav > ul > li > a').index(this);
			$('#vertical_tab_nav > div > article').css('display','none');
			$('#vertical_tab_nav > div > article').eq(clicked_index).fadeIn();
			
			$(this).blur();
			return false;
			
		});
		
	 
});//end ready