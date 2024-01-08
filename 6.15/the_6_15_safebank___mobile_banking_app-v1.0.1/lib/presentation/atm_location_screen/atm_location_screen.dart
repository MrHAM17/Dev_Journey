import 'dart:async';
import 'notifier/atm_location_notifier.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:the_6_15_safebank___mobile_banking_app/core/app_export.dart';

class AtmLocationScreen extends ConsumerStatefulWidget {
  const AtmLocationScreen({Key? key}) : super(key: key);

  @override
  AtmLocationScreenState createState() => AtmLocationScreenState();
}

// ignore_for_file: must_be_immutable
class AtmLocationScreenState extends ConsumerState<AtmLocationScreen> {
  Completer<GoogleMapController> googleMapController = Completer();

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: _buildATMLocation(context)));
  }

  /// Section Widget
  Widget _buildATMLocation(BuildContext context) {
    return SizedBox(
        height: 768.v,
        width: double.maxFinite,
        child: GoogleMap(
            mapType: MapType.normal,
            initialCameraPosition: CameraPosition(
                target: LatLng(37.43296265331129, -122.08832357078792),
                zoom: 14.4746),
            onMapCreated: (GoogleMapController controller) {
              googleMapController.complete(controller);
            },
            zoomControlsEnabled: false,
            zoomGesturesEnabled: false,
            myLocationButtonEnabled: false,
            myLocationEnabled: false));
  }
}
