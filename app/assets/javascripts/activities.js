$(document).ready(function(){

	// $(".row").on('click', '.remove_activity', function(e){
	// 	e.preventDefault;
	// 	confirm("Are you sure?");
	// 	$(this).parents()[2].remove();
	// });
	outer_div = $('#form_vertical')
	$('body').on('click', '#addActivity', function(e){
		e.preventDefault();
			// var day = $(this).data('day').toString();

			var num_activities = $('.quest-activity').length;
			var activity_count = (num_activities + 1).toString();
			var activity_id = 'quest-activity-' + activity_count;
			var date = new Date();
			var unique = date.getTime();

			var day_div = document.createElement("div");
			day_div.setAttribute('class', 'col-md-3 quest-activity');
			day_div.setAttribute('id', activity_id);
			day_div.innerHTML = '<p><strong>' + 'Activity ' + activity_count + "</strong><span><a href='#' class='remove_activity' style='color: red;'>x</a></span></p>";

			// input = document.createElement("input");
			// input_id = 'quest_activities_attributes_0_day'.replace('0', unique);
			// input.setAttribute('id', input_id);
			// input.setAttribute('name', 'quest[activities_attributes][0][day]'.replace('0', unique));
			// input.setAttribute('type', 'hidden');
			// input.setAttribute('value', day);
			// input_label = document.createElement('label');
			// input_label.setAttribute('for', input_id);
			// day_div.appendChild(input_label);
			// day_div.appendChild(input);

			//title
			input = document.createElement("input");
			input_id = 'quest_activities_attributes_0_title'.replace('0', unique);
			input_name = 'quest[activities_attributes][0][title]'.replace('0', unique)
			input.setAttribute('id', input_id);
			input.setAttribute('name', input_name);
			input_label = document.createElement('label');
			input_label.setAttribute('for', input_id);
			input_label.innerHTML = 'Title ';
			day_div.appendChild(input_label);
			day_div.appendChild(input);
			$(day_div).append('<br>');

			//description
			input = document.createElement("textarea");
			input_id = 'quest_activities_attributes_0_description'.replace('0', unique);
			input_name = 'quest[activities_attributes][0][description]'.replace('0', unique)
			input.setAttribute('id', input_id);
			input.setAttribute('name', input_name);
			input_label = document.createElement('label');
			input_label.setAttribute('for', input_id);
			input_label.innerHTML = 'Description ';
			day_div.appendChild(input_label);
			day_div.appendChild(input);
			$(day_div).append('<br>');

			//estimated time
			input = document.createElement("input");
			input_id = 'quest_activities_attributes_0_estimated_time'.replace('0', unique);
			input_name = 'quest[activities_attributes][0][estimated_time]'.replace('0', unique)
			input.setAttribute('id', input_id);
			input.setAttribute('name', input_name);
			input.setAttribute('type', 'number');
			input.setAttribute('min', 1);
			input_label = document.createElement('label');
			input_label.setAttribute('for', input_id);
			input_label.innerHTML = 'Estimated Time (hours)';
			day_div.appendChild(input_label);
			day_div.appendChild(input);
			$(day_div).append('<br>');

			//location
			input = document.createElement("input");
			input_id = 'quest_activities_attributes_0_location'.replace('0', unique);
			input_name = 'quest[activities_attributes][0][location]'.replace('0', unique)
			input.setAttribute('id', input_id);
			input.setAttribute('name', input_name);
			input_label = document.createElement('label');
			input_label.setAttribute('for', input_id);
			input_label.innerHTML = 'Location ';
			day_div.appendChild(input_label);
			day_div.appendChild(input);
			$(day_div).append('<br>');


			//price
			input = document.createElement("input");
			input_id = 'quest_activities_attributes_0_price'.replace('0', unique);
			input_name = 'quest[activities_attributes][0][price]'.replace('0', unique)
			input.setAttribute('id', input_id);
			input.setAttribute('name', input_name);
			input_label = document.createElement('label');
			input_label.setAttribute('for', input_id);
			input_label.innerHTML = 'Price (RM)';
			day_div.appendChild(input_label);
			day_div.appendChild(input);
			$(day_div).append('<br>');

		  input = document.createElement("input");
			input_id = 'quest_activities_attributes_0_references'.replace('0', unique);
			input_name = 'quest[activities_attributes][0][references]'.replace('0', unique)
			input.setAttribute('id', input_id);
			input.setAttribute('name', input_name);
			input_label = document.createElement('label');
			input_label.setAttribute('for', input_id);
			input_label.innerHTML = 'References ';
			day_div.appendChild(input_label);
			day_div.appendChild(input);

			input = document.createElement("input");
			input_id = 'quest_activities_attributes_0_photos'.replace('0', unique);
			input_name = 'quest[activities_attributes][0][photos]'.replace('0', unique)
			input.setAttribute('id', input_id);
			input.setAttribute('name', input_name);
			input.setAttribute('type', 'file')
			input_label = document.createElement('label');
			input_label.setAttribute('for', input_id);
			input_label.innerHTML = 'Photos';
			day_div.appendChild(input_label);
			day_div.appendChild(input);
			$(day_div).append('<br>');

			$('#quest-activities').append(day_div);
			// desc_id = 'quest_activities_attributes_0_description'.replace(0, unique)
			// day_name = 'quest[activities_attributes][0][description]'.replace(0, unique)

	});


});