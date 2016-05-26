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
			var activity_id = 'quest-activity-' + activity_count;
			var date = new Date();
			var unique = date.getTime();

			var activity_div = document.createElement("div");
			// activity_div.setAttribute('class', 'col-md-4 quest-activity');
			// activity_div.setAttribute('id', activity_id);
			// activity_div.innerHTML = '<p><strong>' + 'Activity ' + activity_count + "</strong>"
			// activity_div.innerHTML += "<span><a href='#' class='remove_activity' data-activity='" + activity_count + "'style='color: red;'>x</a></span></p>";

			// // input = document.createElement("input");
			// // input_id = 'quest_activities_attributes_0_day'.replace('0', unique);
			// // input.setAttribute('id', input_id);
			// // input.setAttribute('name', 'quest[activities_attributes][0][day]'.replace('0', unique));
			// // input.setAttribute('type', 'hidden');
			// // input.setAttribute('value', day);
			// // input_label = document.createElement('label');
			// // input_label.setAttribute('for', input_id);
			// // activity_div.appendChild(input_label);
			// // activity_div.appendChild(input);

			// //title
			// input = document.createElement("input");
			// input_id = 'quest_activities_attributes_0_title'.replace('0', unique);
			// input_name = 'quest[activities_attributes][0][title]'.replace('0', unique)
			// input.setAttribute('id', input_id);
			// input.setAttribute('name', input_name);
			// input_label = document.createElement('label');
			// input_label.setAttribute('for', input_id);
			// input_label.innerHTML = 'Title ';
			// activity_div.appendChild(input_label);
			// activity_div.appendChild(input);
			// $(activity_div).append('<br>');

			// //description
			// input = document.createElement("textarea");
			// input_id = 'quest_activities_attributes_0_description'.replace('0', unique);
			// input_name = 'quest[activities_attributes][0][description]'.replace('0', unique)
			// input.setAttribute('id', input_id);
			// input.setAttribute('name', input_name);
			// input_label = document.createElement('label');
			// input_label.setAttribute('for', input_id);
			// input_label.innerHTML = 'Description ';
			// activity_div.appendChild(input_label);
			// activity_div.appendChild(input);
			// $(activity_div).append('<br>');

			// //estimated time
			// input = document.createElement("input");
			// input_id = 'quest_activities_attributes_0_estimated_time'.replace('0', unique);
			// input_name = 'quest[activities_attributes][0][estimated_time]'.replace('0', unique)
			// input.setAttribute('id', input_id);
			// input.setAttribute('name', input_name);
			// input.setAttribute('type', 'number');
			// input.setAttribute('min', 1);
			// input_label = document.createElement('label');
			// input_label.setAttribute('for', input_id);
			// input_label.innerHTML = 'Estimated Time (hours)';
			// activity_div.appendChild(input_label);
			// activity_div.appendChild(input);
			// $(activity_div).append('<br>');

			// //location
			// input = document.createElement("input");
			// input_id = 'quest_activities_attributes_0_location'.replace('0', unique);
			// input_name = 'quest[activities_attributes][0][location]'.replace('0', unique)
			// input.setAttribute('id', input_id);
			// input.setAttribute('name', input_name);
			// input_label = document.createElement('label');
			// input_label.setAttribute('for', input_id);
			// input_label.innerHTML = 'Location ';
			// activity_div.appendChild(input_label);
			// activity_div.appendChild(input);
			// $(activity_div).append('<br>');


			// //price
			// input = document.createElement("input");
			// input_id = 'quest_activities_attributes_0_price'.replace('0', unique);
			// input_name = 'quest[activities_attributes][0][price]'.replace('0', unique)
			// input.setAttribute('id', input_id);
			// input.setAttribute('name', input_name);
			// input_label = document.createElement('label');
			// input_label.setAttribute('for', input_id);
			// input_label.innerHTML = 'Price (RM)';
			// activity_div.appendChild(input_label);
			// activity_div.appendChild(input);
			// $(activity_div).append('<br>');

		 //  input = document.createElement("input");
			// input_id = 'quest_activities_attributes_0_references'.replace('0', unique);
			// input_name = 'quest[activities_attributes][0][references]'.replace('0', unique)
			// input.setAttribute('id', input_id);
			// input.setAttribute('name', input_name);
			// input_label = document.createElement('label');
			// input_label.setAttribute('for', input_id);
			// input_label.innerHTML = 'References ';
			// activity_div.appendChild(input_label);
			// activity_div.appendChild(input);

			// input = document.createElement("input");
			// input_id = 'quest_activities_attributes_0_photos'.replace('0', unique);
			// input_name = 'quest[activities_attributes][0][photos]'.replace('0', unique)
			// input.setAttribute('id', input_id);
			// input.setAttribute('name', input_name);
			// input.setAttribute('type', 'file')
			// input_label = document.createElement('label');
			// input_label.setAttribute('for', input_id);
			// input_label.innerHTML = 'Photos';
			// activity_div.appendChild(input_label);
			// activity_div.appendChild(input);
			// $(activity_div).append('<br>');

			// $('.row').append(activity_div);
			// desc_id = 'quest_activities_attributes_0_description'.replace(0, unique)
			// day_name = 'quest[activities_attributes][0][description]'.replace(0, unique)

		  $('#quest-activity-1').clone()
					.appendTo('#quest-activities')
					.attr('id', 'quest-activity-' + activity_count)
					.find('*')
		      .each(function(){
		      	obj = $(this)
			if(obj.is('label')) {
				obj.attr('for').replace('0', unique)
			}
			else if(obj.is('strong')) {
				obj.html('Activity ' + activity_count)
			}
			else if(obj.is('input')) {
				obj.attr('id').replace('0', unique)
				obj.attr('name').replace('0', unique)
			}
			else if(obj.hasClass('remove_activity')) {
				obj.attr('data-activity', activity_count)
			}
		})
	});


});


