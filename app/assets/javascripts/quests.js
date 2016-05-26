
$(document).ready(function(){
	var addDay = $('#addDay');

	// when append, check if -1 % 3 is 0
	// if true, wrap a row and change append location
	// else append into $('#activities_form div.row:last')

	$(addDay).on('click', function (e){
		e.preventDefault();
		// adds a new day div, a set of activity fields and add activity button
		if($('.activity-day').length < 15){
			var day = ($('.quest-day').length + 1).toString();
			var date = new Date();
			var unique = date.getTime();

			//creates outer day div
			var day_div = document.createElement("div");
			day_div.setAttribute('class', 'well quest-day col-md-4');
			day_div.setAttribute('id', ('quest-day-' + day));
			//<span><a href='#' class='remove_field' style='color: red;'>x</a></span>
			day_div.innerHTML = '<p><strong>' + 'Day ' + day + ' Activities' + "</strong></p>";
			day_div.innerHTML += "<a class='btn btn-primary btn-sm addActivity' data-day=" + day + " href='#'>Add new activity</a>";

			//creates inner activity div
			var activity_div = document.createElement("div");
			activity_div.setAttribute('class', 'quest-day-' + day + '-activities');
			activity_div.setAttribute('id', ('quest-day-' + day + '-activity-1'));

			activity_div.innerHTML = '<p><strong>' + 'Activity 1' + "</strong><span><a href='#' class='remove_activity' style='color: red;'>x</a></span></p>";

			// input = document.createElement("input");
			// input_id = 'quest_activities_attributes_0_day'.replace('0', unique);
			// input.setAttribute('id', input_id);
			// input.setAttribute('name', 'quest[activities_attributes][0][day]'.replace('0', unique));
			// input.setAttribute('type', 'hidden');
			// input.setAttribute('value', day);
			// input_label = document.createElement('label');
			// input_label.setAttribute('for', input_id);
			// activity_div.appendChild(input_label);
			// activity_div.appendChild(input);

			input = document.createElement("input");
			input_id = 'quest_activities_attributes_0_title'.replace('0', unique);
			input.setAttribute('id', input_id);
			input.setAttribute('name', ('quest[activities_attributes][0][title]'.replace('0', unique)));
			input_label = document.createElement('label');
			input_label.setAttribute('for', input_id);
			input_label.innerHTML = 'Title ';
			activity_div.appendChild(input_label);
			activity_div.appendChild(input);
			$(activity_div).append('<br>');

			input = document.createElement("textarea");
			input_id = 'quest_activities_attributes_0_description'.replace('0', unique);
			input.setAttribute('id', ('quest_activities_attributes_0_description'.replace('0', unique)));
			input.setAttribute('name', ('quest[activities_attributes][0][description]'.replace('0', unique)));
			input_label = document.createElement('label');
			input_label.setAttribute('for', input_id);
			input_label.innerHTML = 'Description ';
			activity_div.appendChild(input_label);
			activity_div.appendChild(input);
			//
			$(activity_div).append('<br>');

			input = document.createElement("input");
			input_id = 'quest_activities_attributes_0_estimated_time'.replace('0', unique);
			input.setAttribute('id', ('quest_activities_attributes_0_estimated_time'.replace('0', unique)));
			input.setAttribute('name', ('quest[activities_attributes][0][estimated_time]'.replace('0', unique)));
			input_label = document.createElement('label');
			input_label.setAttribute('for', input_id);
			input_label.innerHTML = 'Estimated Time ';
			activity_div.appendChild(input_label);
			activity_div.appendChild(input);
			//
			$(activity_div).append('<br>');

			input = document.createElement("input");
			input_id = 'quest_activities_attributes_0_location'.replace('0', unique);
			input.setAttribute('id', ('quest_activities_attributes_0_location'.replace('0', unique)));
			input.setAttribute('name', ('quest[activities_attributes][0][location]'.replace('0', unique)));
			input_label = document.createElement('label');
			input_label.setAttribute('for', input_id);
			input_label.innerHTML = 'Location ';
			activity_div.appendChild(input_label);
			activity_div.appendChild(input);
			//
			$(activity_div).append('<br>');


			input = document.createElement("input");
			input_id = 'quest_activities_attributes_0_price'.replace('0', unique);
			input.setAttribute('id', ('quest_activities_attributes_0_price'.replace('0', unique)));
			input.setAttribute('name', ('quest[activities_attributes][0][price]'.replace('0', unique)));
			input_label = document.createElement('label');
			input_label.setAttribute('for', input_id);
			input_label.innerHTML = 'Price ';
			activity_div.appendChild(input_label);
			activity_div.appendChild(input);
			//
			$(activity_div).append('<br>');

		  input = document.createElement("input");
			input_id = 'quest_activities_attributes_0_references'.replace('0', unique);
			input.setAttribute('id', ('quest_activities_attributes_0_references'.replace('0', unique)));
			input.setAttribute('name', ('quest[activities_attributes][0][references]'.replace('0', unique)));
			input_label = document.createElement('label');
			input_label.setAttribute('for', input_id);
			input_label.innerHTML = 'References ';
			activity_div.appendChild(input_label);
			activity_div.appendChild(input);

			day_div.appendChild(activity_div);
			$('.row').append(day_div);
			// desc_id = 'quest_activities_attributes_0_description'.replace(0, unique)
			// day_name = 'quest[activities_attributes][0][description]'.replace(0, unique)
		}
	});

	// $('.remove_day').on('click', function(e){
	// 	e.preventDefault;
	// 	$(this).parents('div.quest-day').remove();
	// });
});