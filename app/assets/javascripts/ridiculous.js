var RIDICULOUSHAT = function() {
	
	var mapClass = function() {
		
		var self = this;
		var centerLoc, infoWindow, map;
		
		this.makeMap = function() {
			var mapOptions = {
	          center: centerLoc,
	          zoom: 15,
			  mapTypeControl:false,
			  streetViewControl:false,
			  overviewMapControl:false,
	        };
			map = new google.maps.Map(document.getElementById("map-canvas"), mapOptions);
		}
		
		this.createMarker = function(latlng, name, address) {
			var html = "<b>" + name + "</b> <br/>" + address;
		  	var marker = new google.maps.Marker({
				map: map,
				position: latlng
		  	});
		  	
		  	google.maps.event.addListener(marker, 'click', function() {
				infoWindow.setContent(html);
				infoWindow.open(map, marker);
		  	});
		}
		
		this.setMarkers = function() {
			var markers = document.getElementsByTagName("marker");
			for (i = 0; i < markers.length; i++) {
				var name = markers[i].getAttribute("name");
				var address = markers[i].getAttribute("address");
				var latlng = new google.maps.LatLng(
	              parseFloat(markers[i].getAttribute("lat")),
	              parseFloat(markers[i].getAttribute("lng")));
				self.createMarker(latlng, name, address);
			}
		}
		
		this.init = function() {
			centerLoc = new google.maps.LatLng(56.87963, 14.80671);
			infoWindow = new google.maps.InfoWindow({
			    pixelOffset: new google.maps.Size(-9, 0)
		    });
			self.makeMap();
			self.setMarkers();
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