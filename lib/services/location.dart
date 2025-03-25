import 'package:geolocator/geolocator.dart';

class Location {
  ///live current location weather get by latitude and longitude.....

   late double latitude;
   late double longitude;

  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.low,
      );
      latitude=position.latitude;
      longitude = position.longitude;
    } catch (e) {
      print(e);
    }
  }
}
