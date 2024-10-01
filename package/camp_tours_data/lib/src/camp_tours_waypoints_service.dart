import 'package:camp_tours_data/camp_tours_data.dart';

class CampToursWaypointsService {
  Future<List<Location>> retrieveLocations(double latitude, double longitude) {
    return Future.value([
      Location(latitude: latitude, longitude: longitude, buildingNumber: 1),
      Location(latitude: latitude, longitude: longitude, buildingNumber: 2),
      Location(latitude: latitude, longitude: longitude, buildingNumber: 3),
      Location(latitude: latitude, longitude: longitude, buildingNumber: 4),
      Location(latitude: latitude, longitude: longitude, buildingNumber: 5),
      Location(latitude: latitude, longitude: longitude, buildingNumber: 6),

    ]);
  }
}