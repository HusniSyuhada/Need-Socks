function myMap() {
    var mapProp= {
        center: new google.maps.LatLng(4.8856761, 114.9318382),
        zoom:15,
    };
    var map=new google.maps.Map(document.getElementById("googleMap"),mapProp);

    
    var marker = new google.maps.Marker({
        position: new google.maps.LatLng(4.8856761, 114.9318382),
        map: map
    });
}
