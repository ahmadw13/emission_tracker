import 'dart:math';

const double earthRadius = 6371;

double calculateDistance(double lat1, double lon1, double lat2, double lon2) {
  final double lat1Rad = _toRadians(lat1);
  final double lon1Rad = _toRadians(lon1);
  final double lat2Rad = _toRadians(lat2);
  final double lon2Rad = _toRadians(lon2);

  final double dLat = lat2Rad - lat1Rad;
  final double dLon = lon2Rad - lon1Rad;

  final double a = pow(sin(dLat / 2), 2) +
      cos(lat1Rad) * cos(lat2Rad) * pow(sin(dLon / 2), 2);
  final double c = 2 * atan2(sqrt(a), sqrt(1 - a));
  final double distance = earthRadius * c;

  return distance;
}

double _toRadians(double degree) {
  return degree * pi / 180;
}
