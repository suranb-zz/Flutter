import 'package:geolocator/geolocator.dart';

class Location {
  double latitute;
  double longitude;

  Future<void> getCurrentLocation() async {
    try {
      Position position = await getCurrentPosition(desiredAccuracy: LocationAccuracy.low);

      latitute = position.latitude;
      longitude = position.longitude;

    } catch (exception){
      print(exception);
    }
  }

}