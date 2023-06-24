import 'package:geolocator/geolocator.dart';
import 'dart:async';
import 'package:flutter/material.dart';

class LocationService {
  static StreamSubscription<Position>? positionStreamSubscription;
  static TextEditingController latController = TextEditingController();
  static TextEditingController longController = TextEditingController();
  static bool isRunning = false;

  static void startLocationUpdates() {
    if (!isRunning) {
      positionStreamSubscription
          ?.cancel(); // Cancel any existing stream subscription

      positionStreamSubscription = Geolocator.getPositionStream(
        locationSettings: const LocationSettings(
            accuracy: LocationAccuracy.high, distanceFilter: 10),
      ).listen((Position position) {
        getCurrentLocation(position);
      });
      isRunning = true;
    }
  }

  static void stopLocationUpdates() {
    if (isRunning) {
      positionStreamSubscription?.cancel();
      isRunning = false;
    }
  }

  static Future getCurrentLocation(Position position) async {
    double latitude = position.latitude;
    double longitude = position.longitude;

    latController.text = latitude.toString();
    longController.text = longitude.toString();

    Map<String, dynamic> locationData = {
      'latitude': latitude,
      'longitude': longitude,
    };
    print(locationData);
    return locationData;
  }

  static getC() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    print(position);
  }
}

class CarbonEmission {
  late double _km;
  late double _co2PerKm;

  CarbonEmission(double km, double co2PerKm) {
    this._km = km;
    this._co2PerKm = co2PerKm;
  }

  double get carbonEmission => _km * _co2PerKm;

  String toString() {
    return 'Carbon emission: ${_km * _co2PerKm} kg';
  }
}
