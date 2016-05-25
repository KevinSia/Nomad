$(document).ready(function(){

	$('.row').on('click', '.addActivity', function(e){
		e.preventDefault();
		var day = $(this).data('day').toString();
		var num_activities = $('.quest-day-' + day + '-activities').length;
		// adds a new day div, a set of activity fields and add activity button
		if(num_activities < 4){
			var day = $(this).data('day').toString();
			var day_id = '#quest-day-' + day;
			var activity_count = (num_activities + 1).toString();
			var date = new Date();
			var unique = date.getTime();

			var day_div = document.createElement("div");
			day_div.setAttribute('class', 'quest-day-' + day + '-activities');
			day_div.setAttribute('id', ('quest-day-' + day.toString() + 'activity-' + activity_count));
			day_div.innerHTML = '<p><strong>' + 'Activity ' + activity_count + "</strong><span><a href='#' class='remove_activity' style='color: red;'>x</a></span></p>";

			input = document.createElement("input");
			input_id = 'quest_activities_attributes_0_day'.replace('0', unique);
			input.setAttribute('id', input_id);
			input.setAttribute('name', 'quest[activities_attributes][0][day]'.replace('0', unique));
			input.setAttribute('type', 'hidden');
			input.setAttribute('value', day);
			input_label = document.createElement('label');
			input_label.setAttribute('for', input_id);
			day_div.appendChild(input_label);
			day_div.appendChild(input);

			input = document.createElement("textarea");
			input_id = 'quest_activities_attributes_0_description'.replace('0', unique);
			input.setAttribute('id', ('quest_activities_attributes_0_description'.replace('0', unique)));
			input.setAttribute('name', ('quest[activities_attributes][0][description]'.replace('0', unique)));
			input_label = document.createElement('label');
			input_label.setAttribute('for', input_id);
			input_label.innerHTML = 'Description ';
			day_div.appendChild(input_label);
			day_div.appendChild(input);
			$(day_div).append('<br>');

			input = document.createElement("input");
			input_id = 'quest_activities_attributes_0_estimated_time'.replace('0', unique);
			input.setAttribute('id', ('quest_activities_attributes_0_estimated_time'.replace('0', unique)));
			input.setAttribute('name', ('quest[activities_attributes][0][estimated_time]'.replace('0', unique)));
			input_label = document.createElement('label');
			input_label.setAttribute('for', input_id);
			input_label.innerHTML = 'Estimated Time ';
			day_div.appendChild(input_label);
			day_div.appendChild(input);
			$(day_div).append('<br>');

			input = document.createElement("input");
			input_id = 'quest_activities_attributes_0_location'.replace('0', unique);
			input.setAttribute('id', ('quest_activities_attributes_0_location'.replace('0', unique)));
			input.setAttribute('name', ('quest[activities_attributes][0][location]'.replace('0', unique)));
			input_label = document.createElement('label');
			input_label.setAttribute('for', input_id);
			input_label.innerHTML = 'Location ';
			day_div.appendChild(input_label);
			day_div.appendChild(input);
			$(day_div).append('<br>');


			input = document.createElement("input");
			input_id = 'quest_activities_attributes_0_price'.replace('0', unique);
			input.setAttribute('id', ('quest_activities_attributes_0_price'.replace('0', unique)));
			input.setAttribute('name', ('quest[activities_attributes][0][price]'.replace('0', unique)));
			input_label = document.createElement('label');
			input_label.setAttribute('for', input_id);
			input_label.innerHTML = 'Price ';
			day_div.appendChild(input_label);
			day_div.appendChild(input);
			$(day_div).append('<br>');

		  input = document.createElement("input");
			input_id = 'quest_activities_attributes_0_references'.replace('0', unique);
			input.setAttribute('id', ('quest_activities_attributes_0_references'.replace('0', unique)));
			input.setAttribute('name', ('quest[activities_attributes][0][references]'.replace('0', unique)));
			input_label = document.createElement('label');
			input_label.setAttribute('for', input_id);
			input_label.innerHTML = 'References ';
			day_div.appendChild(input_label);
			day_div.appendChild(input);


			$(day_id).append(day_div);
			// desc_id = 'quest_activities_attributes_0_description'.replace(0, unique)
			// day_name = 'quest[activities_attributes][0][description]'.replace(0, unique)
		}
	});

	$('.remove_activity').on('click', function(e){
		e.preventDefault;
		$(this).parents('div.quest-day').remove();
	});
});