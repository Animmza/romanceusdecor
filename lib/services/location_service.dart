import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:romanceusdecor/services/permissions.dart';

class LocationService {
  Permissions _permissions = Permissions();
  Future<String> getCurrentAddress() async {
    if (await _permissions.hasLocationPermission()) {
      final Position _currentPosition = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.best);
      List<Placemark> _placeMarks = await placemarkFromCoordinates(
          _currentPosition.latitude, _currentPosition.longitude);
      return _placeMarks.first.locality.toString() +
          ", " +
          _placeMarks.first.administrativeArea.toString();
    } else {
      final permissionStatus = await _permissions.getLocationPermission();
      if (permissionStatus == PermissionStatus.granted) {
        final Position _currentPosition = await Geolocator.getCurrentPosition(
            desiredAccuracy: LocationAccuracy.best);
        List<Placemark> _placeMarks = await placemarkFromCoordinates(
            _currentPosition.latitude, _currentPosition.longitude);
        return _placeMarks.first.locality.toString() +
            ", " +
            _placeMarks.first.administrativeArea.toString();
      }
    }
    return "";
  }
}
