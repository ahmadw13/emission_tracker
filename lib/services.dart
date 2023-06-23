class LocationData {
  double? startLatitude;
  double? startLongitude;
  double? stopLatitude;
  double? stopLongitude;
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
