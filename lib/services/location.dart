import 'package:geolocator/geolocator.dart';

class Location {
  late double latitude;
  late double longitude;

  Future<void> getCurrentLocation() async {
    Position position;
    LocationPermission permission = await Geolocator.checkPermission();
    if(permission == LocationPermission.denied){
      permission = await Geolocator.requestPermission();
      position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
    }
    else{
      position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
    }
    latitude = position.latitude;
    longitude = position.longitude;
  }
}