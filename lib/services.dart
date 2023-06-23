import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

class LocationService {
  static StreamSubscription<Position>? positionStreamSubscription;

  static void startLocationUpdates() {
    positionStreamSubscription
        ?.cancel(); // Cancel any existing stream subscription

    positionStreamSubscription = Geolocator.getPositionStream(
      locationSettings: const LocationSettings(
          accuracy: LocationAccuracy.high, distanceFilter: 10),
    ).listen((Position position) {
      getCurrentLocation(position);
    });
  }

  static void stopLocationUpdates() {
    positionStreamSubscription?.cancel();
  }

  static Future getCurrentLocation(Position position) async {
    double latitude = position.latitude;
    double longitude = position.longitude;

    String apiKey =
        'pk.eyJ1IjoieGVvbjM5IiwiYSI6ImNsajdvNXFwbDB6dDEzZnBhbTE2bGNtczEifQ.4yj0YeVaKk7dBq5915DTAw';
    String apiUrl =
        'https://api.mapbox.com/geocoding/v5/mapbox.places/$longitude,$latitude.json?access_token=$apiKey';

    http.Response response = await http.get(Uri.parse(apiUrl));
    if (response.statusCode == 200) {
      Map<String, dynamic> locationData = {
        'latitude': latitude,
        'longitude': longitude,
      };
      print(locationData);
      return locationData;
    } else {
      throw Exception("Failed to update");
    }
  }
}
