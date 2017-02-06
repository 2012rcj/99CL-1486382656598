$(function() {
		$("#StartDate").datepicker({
			dateFormat : "yy-mm-dd",
			numberOfMonths : 1,
			changeMonth: true,
		    changeYear: true,   
		    yearRange:'-90:+0',
			onSelect : function(selected) {
				var dt = new Date(selected);
				dt.setDate(dt.getDate() + 1);
				$("#EndDate").datepicker("option", "minDate", dt);
			}
		});
		$("#EndDate").datepicker({
			dateFormat : "yy-mm-dd",
			numberOfMonths : 1,
			changeMonth: true,
		    changeYear: true,	    
		    yearRange:'-90:+0',
			onSelect : function(selected) {
				var dt = new Date(selected);
				dt.setDate(dt.getDate() - 1);
				$("#StartDate").datepicker("option", "maxDate", dt);
				noOfdays();
			}
		});
	});