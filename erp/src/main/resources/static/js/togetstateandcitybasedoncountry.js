function getState(countryId){
   	
   	$.ajax({
   		url:contextPath+"/master/getStates",
   		type: 'GET', 
   		 data: { countryId: countryId }, 
   		 async:false,
   	        success: function(response) {
   	        	 console.log('States:', response);
   	        	 const stateDropdown = $('#stateM');
   	        	 stateDropdown.empty();
   	             if (response.success) {
   	                 const stateList = response.stateList;

   	                 stateDropdown.append('<option value="">Select a State</option>');

   	                 stateList.forEach(state => {
   	                	 console.log("stateId="+state.stateMId);
   	                     console.log("stateName="+state.stateName);
   	                     stateDropdown.append(
   	                         '<option value="'+state.stateMId+'">'+state.stateName+'</option>'  	                     
   	                         );
   	                 });
   	                 
   	             } else {
   	                 console.error('Failed to fetch states: ', response.message || 'Unknown error');
   	             }console.log('States:', response);
   	        },
   	        error: function(xhr, status, error) {
   	            console.error('Error:', error);
   	        }
   	});
   	
   }
   
   function getCities(stateId){
   	$.ajax({
   		url:contextPath+"/master/getCities",
   		type: 'GET', 
   		 data: { stateId: stateId }, 
   		 async:false,
   	        success: function(response) {
   	        	 console.log('Cities:', response);
   	        	 const cityDropDown = $('#cityM');
   	        	 cityDropDown.empty();
   	             if (response.success) {
   	                 const cityList = response.cityList;

   	                 cityDropDown.append('<option value="">Select a City</option>');

   	                 cityList.forEach(city => {
   	                	 console.log("cityId="+city.cityMId);
   	                     console.log("cityName="+city.cityName);
   	                     cityDropDown.append(
   	                         '<option value="'+city.cityMId+'">'+city.cityName+'</option>'  	                     
   	                         );
   	                 });
   	                 
   	             } else {
   	                 console.error('Failed to fetch states: ', response.message || 'Unknown error');
   	             }console.log('States:', response);
   	        },
   	        error: function(xhr, status, error) {
   	            console.error('Error:', error);
   	        }
   	});
   }
