var RIDICULOUSHAT = function() {
	
	var mapClass = function() {
		
		var self = this;
		var centerLoc;
		
		this.makeMap = function() {
			centerLoc = new google.maps.LatLng(56.87963, 14.80671);
			var mapOptions = {
	          center: centerLoc,
	          zoom: 15,
			  mapTypeControl:false,
			  streetViewControl:false,
			  overviewMapControl:false,
	        };
			var map = new google.maps.Map(document.getElementById("map-canvas"), mapOptions);
		}
		
		this.init = function() {
			
			self.makeMap();
		}		
	}// End of mapClass
	
	

		
	return {
		
		init : function() {
			var mapObj = new mapClass();
			mapObj.init();
		}
	}


}();

$(document).ready(RIDICULOUSHAT.init);   