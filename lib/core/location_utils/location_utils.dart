import 'package:al3yadah_app/core/helpers/dimensions.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../widgets/app_button.dart';
import '../../widgets/app_dialog.dart';
import '../../widgets/app_text.dart';
import '../helpers/utils.dart';
import '../route_utils/route_utils.dart';

class LocationUtils {
  static LatLng currentLocation = const LatLng(24.7134, 46.6752);

  static Stream<Position> getCurrentLocationStream() {
    return Geolocator.getPositionStream(
      locationSettings: const LocationSettings(
        accuracy: LocationAccuracy.bestForNavigation,
        distanceFilter: 1000,
      ),
    );
  }

  static Future<LatLng> getCurrentLocation() async {
    LocationPermission status = await Geolocator.requestPermission();
    while (!_isLocationDetermined(status)) {
      await AppDialog.show(
        dismissible: false,
        child: Column(
          children: [
            AppText(
              title: "location_can_not_be_determined".tr(),
              fontWeight: FontWeight.w700,
              fontSize: 18,
              textAlign: TextAlign.center,
            ),
            Center(
              child: AppText(
                padding: EdgeInsets.symmetric(vertical: 12.height),
                title: "enable_location_and_try_again".tr(),
                fontWeight: FontWeight.w400,
                fontSize: 14,
                textAlign: TextAlign.center,
              ),
            ),
            AppButton(
              title: 'enable'.tr(),
              onTap: () async {
                LocationPermission status =
                    await Geolocator.requestPermission();
                if (_isLocationDetermined(status)) {
                  Navigator.pop(RouteUtils.context);
                  return;
                }
                Geolocator.openLocationSettings();
              },
            ),
          ],
        ),
      );
      status = await Geolocator.requestPermission();
    }
    final position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.bestForNavigation,
    );
    currentLocation = LatLng(position.latitude, position.longitude);
    return currentLocation;
  }

  static bool _isLocationDetermined(LocationPermission status) {
    return status == LocationPermission.always ||
        status == LocationPermission.whileInUse;
  }

  // static Future<Set<Polyline>> getPolyline(LatLng from,LatLng to) async {
  //   List<LatLng> polylineCoordinates = [];
  //   Polyline? polyline;
  //   PolylineResult result = await PolylinePoints().getRouteBetweenCoordinates(
  //     Utils.googleAPIKey,
  //     PointLatLng(from.latitude, from.longitude),
  //     PointLatLng(to.latitude, to.longitude),
  //     travelMode: TravelMode.driving,
  //   );
  //   if (result.points.isNotEmpty) {
  //     result.points.forEach((PointLatLng point) {
  //       polylineCoordinates.add(LatLng(point.latitude, point.longitude));
  //     });
  //     polyline = Polyline(
  //       polylineId: PolylineId("${from.latitude}, ${from.longitude} - ${to.latitude}, ${to.longitude}"),
  //       color: AppColors.orange,
  //       points: polylineCoordinates,
  //       width: 3,
  //     );
  //     return {polyline};
  //   }
  //   return {};
  // }

  static Future<BitmapDescriptor> getMarkerIcon({String image = 'marker_dot'}) {
    return BitmapDescriptor.fromAssetImage(
        const ImageConfiguration(), Utils.getAssetPNGPath(image));
  }
}
