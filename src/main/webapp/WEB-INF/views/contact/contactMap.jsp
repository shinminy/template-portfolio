<script src="https://maps.googleapis.com/maps/api/js?sensor=false"></script>
<script>
  function initialize() {
   var myLatlng = new google.maps.LatLng(35.87110100714382, 128.60169690333006);
   var mapOptions = {
        zoom: 17,
        center: myLatlng,
        mapTypeId: google.maps.MapTypeId.ROADMAP
   }
   var map = new google.maps.Map(document.getElementById('map_place'), mapOptions);
  }
 </script>