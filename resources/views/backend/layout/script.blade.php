
<script src="{{url('assets/js/core/popper.min.js')}}">
</script>
<script src="{{url('assets/js/core/bootstrap.min.js')}}">
</script>
<script src="{{url('assets/js/plugins/perfect-scrollbar.min.js')}}">
</script>
<script src="{{url('assets/js/plugins/smooth-scrollbar.min.js')}}">
</script>
<script src="{{url('assets/js/plugins/dragula/dragula.min.js')}}">
</script>
<!-- <script src="{{url('assets/js/plugins/jkanban/jkanban.js')}}"> -->
</script>
<!-- <script src="{{url('assets/js/plugins/leaflet.js')}}"> -->
</script>
<script src="{{url('assets/js/plugins/nouislider.min.js')}}">
</script>
<script>
//  // Initialize the map and assign it to a variable for later use
//  // there's a few ways to declare a VARIABLE in javascript.
//  // you might also see people declaring variables using `const` and `let`
//  var map = L.map('mapid', {
// // Set latitude and longitude of the map center (required)
// center: [38.89, -77.03],
// // Set the initial zoom level, values 0-18, where 0 is most zoomed-out (required)
// zoom: 11,
// scrollWheelZoom: false
// });
//  // Create a Tile Layer and add it to the map
//  var tiles = new L.tileLayer('%7bs%7d.basemaps.cartocdn.com/rastertiles/voyager_labels_under/%7bz%7d/%7bx%7d/%7by%7d.png', {
//  	attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors &copy; <a href="https://carto.com/attributions">CARTO</a>',
//  	subdomains: 'abcd',
//  	maxZoom: '19'
//  }).addTo(map);
// // Init slider
// var slider = document.getElementById("sliderRegular");
// noUiSlider.create(slider, {
// 	start: 40,
// 	connect: [true, false],
// 	range: {
// 		min: 0,
// 		max: 100
// 	}
// });
</script>
<script>
	var win = navigator.platform.indexOf('Win') > -1;
	if (win && document.querySelector('#sidenav-scrollbar')) {
		var options = {
			damping: '0.5'
		}
		Scrollbar.init(document.querySelector('#sidenav-scrollbar'), options);
	}
</script>
<script async defer src="buttons.github.io/buttons.js">
</script>
<script src="{{url('assets/js/material-dashboard.min1bb8.js?v=3.0.5')}}">
</script>