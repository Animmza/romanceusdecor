import 'package:permission_handler/permission_handler.dart';

class Permissions {
  hasLocationPermission() {
    return Permission.location.isGranted;
  }

  Future<PermissionStatus> getLocationPermission() async {
    return await Permission.location.request();
  }
}
