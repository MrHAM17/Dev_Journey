import 'dart:async';
import 'notifier/empty_map_notifier.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:the_6_17_housit___buyrentsell_property/core/app_export.dart';

class EmptyMapScreen extends ConsumerStatefulWidget {
  const EmptyMapScreen({Key? key})
      : super(
          key: key,
        );

  @override
  EmptyMapScreenState createState() => EmptyMapScreenState();
}

class EmptyMapScreenState extends ConsumerState<EmptyMapScreen> {
  Completer<GoogleMapController> googleMapController = Completer();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _buildEmptymap(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildEmptymap(BuildContext context) {
    return SizedBox(
      height: SizeUtils.height,
      width: double.maxFinite,
      child: GoogleMap(
        //TODO: Add your Google Maps API key in AndroidManifest.xml and pod file
        mapType: MapType.normal,
        initialCameraPosition: CameraPosition(
          target: LatLng(
            37.43296265331129,
            -122.08832357078792,
          ),
          zoom: 14.4746,
        ),
        onMapCreated: (GoogleMapController controller) {
          googleMapController.complete(controller);
        },
        zoomControlsEnabled: false,
        zoomGesturesEnabled: false,
        myLocationButtonEnabled: false,
        myLocationEnabled: false,
      ),
    );
  }
}
