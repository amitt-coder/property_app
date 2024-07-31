import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:permission_handler/permission_handler.dart';

class PropertyDetailController extends GetxController{
  RxString selectStatus = 'Active'.obs;
  RxList<String> selectStatusList = ['Active', 'Deactivate', 'Close'].obs;
  RxDouble latitude = 0.0.obs;
  RxDouble longitude = 0.0.obs;
  LatLng initialPosition = LatLng(22.7196, 75.8577);
  LatLng currentPosition = LatLng(22.7196, 75.8577);
  RxString address = ''.obs;
  var isLoading = false.obs;
  var markers = Set<Marker>().obs;
  var isAgreed = false.obs;


  @override
  void onInit() {
    // TODO: implement onInit
    requestLocationPermission();
    getCurrentLocation();
    update();
    super.onInit();
  }



  Future<void> requestLocationPermission() async {
    var status = await Permission.location.request();
    if (status.isGranted) {
      await getCurrentLocation();
      print('Location permission granted');
    } else {
      print('Location permission denied');
    }
  }

  Future<void> getCurrentLocation() async {
    try {
      isLoading.value = true;
      bool serviceEnabled;
      LocationPermission permission;

      serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        return Future.error('Location services are disabled.');
      }

      permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          return Future.error('Location permissions are denied');
        }
      }

      if (permission == LocationPermission.deniedForever) {
        return Future.error(
            'Location permissions are permanently denied, we cannot request permissions.');
      }
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
      latitude.value = position.latitude;
      longitude.value = position.longitude;
      currentPosition = LatLng(latitude.value, longitude.value);
      initialPosition = currentPosition;
      update();

      // print("lat===============${ latitude.value }");
      // print("lat===============${ longitude.value }");
      // getFormattedAddress(latitude.value,longitude.value);
      update();
      // Add a marker for the current location
      markers.add(Marker(
        markerId: MarkerId('currentLocation'),
        // position: LatLng(latitude.value,longitude.value),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
      ));
      update();
    } finally {
      isLoading.value = false;
    }
    update();
  }
}