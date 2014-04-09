var RIDICULOUSHAT = function() {
	
	var mapClass = function() {
		
		var self = this;
		var infoWindow, map;
		var centerLoc = {};
		
		this.makeMap = function() {
			var mapOptions = {
	          center: centerLoc.latlng,
	          zoom: 15,
			  mapTypeControl:false,
			  streetViewControl:false,
			  overviewMapControl:false,
			  styles: self.getMapStyle()
	        };
			map = new google.maps.Map(document.getElementById("map_canvas"), mapOptions);
		}
		
		this.getMapStyle = function() {
			return [
				    {
				        "featureType": "water",
				        "elementType": "geometry",
				        "stylers": [
				            {
				                "color": "#a2daf2"
				            }
				        ]
				    },
				    {
				        "featureType": "landscape.man_made",
				        "elementType": "geometry",
				        "stylers": [
				            {
				                "color": "#f7f1df"
				            }
				        ]
				    },
				    {
				        "featureType": "landscape.natural",
				        "elementType": "geometry",
				        "stylers": [
				            {
				                "color": "#d0e3b4"
				            }
				        ]
				    },
				    {
				        "featureType": "road.highway",
				        "elementType": "geometry.fill",
				        "stylers": [
				            {
				                "color": "#ffe15f"
				            }
				        ]
				    },
				    {
				        "featureType": "road.highway",
				        "elementType": "geometry.stroke",
				        "stylers": [
				            {
				                "color": "#efd151"
				            }
				        ]
				    },
				    {
				        "featureType": "road.arterial",
				        "elementType": "geometry.fill",
				        "stylers": [
				            {
				                "color": "#ffffff"
				            }
				        ]
				    },
				    {
				        "featureType": "poi",
				        "elementType": "geometry.fill",
				        "stylers": [
				            {
				                "color": "#d0e3b4"
				            }
				        ]
				    }
				]
		}
		
		this.createMarker = function(latlng, name, address, icon) {
			if (!icon) {icon = '';}
			var html = "<b>" + name + "</b> <br/>" + address;
		  	var marker = new google.maps.Marker({
				map: map,
				position: latlng,
				icon: icon
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
				self.createMarker(latlng, name, address, "../img/icons/pin.png");
			}
			self.createMarker(centerLoc.latlng, centerLoc.name, centerLoc.address, "../img/icons/here.png");
		}
		
		this.getCenter = function() {
			var center = $('#you_are_here');
			centerLoc.name = center.data("name");
			centerLoc.address = center.data("address");
			centerLoc.latlng = new google.maps.LatLng(
	              parseFloat(center.data("lat")),
	              parseFloat(center.data("lng")));
		}
		
		this.init = function() {
			infoWindow = new google.maps.InfoWindow({
			    pixelOffset: new google.maps.Size(-9, 0)
		    });
		    self.getCenter();
			self.makeMap();
			self.setMarkers();
		}		
	}// End of mapClass
	
	//Inline editing class
	var editClass = function() {
		var self = this;
		
		this.parseError = function(index, value) {
			index = index.toString();
			value = value.toString();
			if (index == 'base') {
				return value;
			}
			else {
				return 'Supplier ' + index + ' ' + value;
			}
		}
		
		this.setErrorListener = function() {
			$('.best_in_place').bind("ajax:error", function(event, request, error) {
				var test = 0;
			    // Display all error messages from server side validation
			    jQuery.each(jQuery.parseJSON(request.responseText), function(index, value) {
			      var msg = '';
			      if (value) {
			      	msg = value;
			      }
			      else {
			      	return
			      } 
			      if( typeof(value) == "object") {msg = self.parseError(index, value)}
			      $.bootstrapGrowl(msg, {
					type: 'danger',
			      	allow_dismiss: true,
			      	offset: {from: 'top', amount: '260'},
			      	align: 'center',
			      	width: 500
			      });
			    });
			});
		}
		
		this.init = function() {
			$('.best_in_place').best_in_place();
			self.setErrorListener();
		}
	}// End of editClass
	
	var deleteClass = function() {
		
		var self = this;
		this.setDeleteListener = function() {
			var delete_buttons = $(".row").find("[data-method='delete']");
			
			delete_buttons.bind('ajax:error', function(event, xhr, status, error){
			  if (xhr.status == 404) {
			  	return;
			  }
			  $.bootstrapGrowl('Something went wrong deleting the supplier. Please contact support or try again later. :(', {
				type: 'danger',
		      	allow_dismiss: true,
		      	offset: {from: 'top', amount: '260'},
		      	align: 'center',
		      	width: 600
		      });
			});
			
			delete_buttons.bind('ajax:beforeSend', function(){
			  var delete_btn = $(this)
			  var card = delete_btn.parents(".supplier_card");
			  var card_children = card.find('*');
			  card_children.find("img").remove();
			  card.addClass("deleted");
			  delete_btn.detach();
			});
		}
		
		this.init = function() {
			self.setDeleteListener();
		}
	}// End of deleteClass
	
	var resetNewPageClass = function() {
		var self = this;
		var editObj, deleteObj;
		this.reset = function() {
			editObj.init();
			deleteObj.init();
		}
		this.init = function(editParam, deleteParam) {
			editObj = editParam;
			deleteObj = deleteParam;
		}
		
	}// End of resetNewPageClass
	
	var resetNewPageObj;
		
	return {
		
		init : function() {
			if ($("#home_page").length > 0) {
				var mapObj = new mapClass();
				var editObj = new editClass();
				var deleteObj = new deleteClass();
				resetNewPageObj = new resetNewPageClass();
				mapObj.init();
				editObj.init();
				deleteObj.init();
				resetNewPageObj.init(editObj, deleteObj);
				
				window.setTimeout(function() { $('.alert').fadeOut(300); }, 5000);
			}
			return resetNewPageObj;
		},
		
		reset_new_page : function() {
			if ($("#home_page").length > 0) {
				resetNewPageObj.reset();
			}
		}
	}


}();
  
$(window).bind('page:change', RIDICULOUSHAT.init);