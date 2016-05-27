$(function(){
	$('a[title]').tooltip();
	$('.btn-submit').on('click', function(e) {
		e.preventDefault();
		var formname = $(this).attr('name');
		var tabname = $(this).attr('href');
		if ($('#' + formname)[0]) {
			/* Only works in Firefox/Chrome need polyfill for IE9, Safari. http://afarkas.github.io/webshim/demos/ */
			e.preventDefault();
			$('ul.nav li a[href="' + tabname + '"]').parent().removeClass('disabled');
			$('ul.nav li a[href="' + tabname + '"]').trigger('click'); 
		}

		$('ul.nav li').on('click', function(e) {
			if ($(this).hasClass('disabled')) {
				e.preventDefault();
				return false;
			}
		});
	});
	// $('.remove_day').on('click', function(e){
	// 	e.preventDefault;
	// 	$(this).parents('div.quest-day').remove();
	// });
});

//moving questbanner
// Trigger class name on load
window.onload = function() {
  document.body.className += ' loaded'
};



//activitybox
$(".hover").mouseleave(
  function () {
    $(this).removeClass("hover");
  }
);

