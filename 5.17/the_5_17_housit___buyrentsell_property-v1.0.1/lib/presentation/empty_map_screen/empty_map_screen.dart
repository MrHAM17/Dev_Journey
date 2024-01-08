import 'dart:async';
import 'models/empty_map_model.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:the_5_17_housit___buyrentsell_property/core/app_export.dart';
import 'provider/empty_map_provider.dart';

class EmptyMapScreen extends StatefulWidget {
  const EmptyMapScreen({Key? key})
      : super(
          key: key,
        );

  @override
  EmptyMapScreenState createState() => EmptyMapScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => EmptyMapProvider(),
      child: EmptyMapScreen(),
    );
  }
}

class EmptyMapScreenState extends State<EmptyMapScreen> {
  Completer<GoogleMapController> googleMapController = Completer();

  @override
  void initState() {
    super.initState();
  }

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
