$(document).ready(function(){

	$(".row").on('click', '.remove_activity', function(e){
		e.preventDefault;
		confirm_destroy = confirm("Are you sure?");
		if(confirm_destroy) {
			id = $(this).data('activity');
			$('#quest-activity-' + id).remove();
		}
		else {
			return false;
		}
	});

	$('body').on('click', '#addActivity', function(e){
			e.preventDefault();
			var num_activities = $('.quest-activity').length;
			var activity_count = (num_activities + 1).toString();
			var date = new Date();
			var unique = date.getTime();

		  $('#quest-activity-1').clone()
					.appendTo('#quest-activities')
					.attr('id', 'quest-activity-' + activity_count)
					.find('*')
		      .each(function(){
		      	obj = $(this)
			if(obj.is('label')) {
				obj.attr('for', function(i, val){
					if(val){
						return val.replace('0', unique);
					}
				})
			}
			else if(obj.is('strong')) {
				obj.html('Activity ' + activity_count)
			}
			else if(obj.is('input') || obj.is('textarea')) {
				obj.attr('id', function(i, val){
					return val.replace('0', unique)
				})
				obj.attr('name', function(i, val){
					return val.replace('0', unique)
				})
				obj.val('')
			}
			else if(obj.hasClass('remove_activity')) {
				obj.attr('data-activity', activity_count)
			}
		})
	});


});


