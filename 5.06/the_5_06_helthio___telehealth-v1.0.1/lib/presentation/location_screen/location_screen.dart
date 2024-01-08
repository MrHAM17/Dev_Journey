import 'dart:async';
import 'models/location_model.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:the_5_06_helthio___telehealth/core/app_export.dart';
import 'package:the_5_06_helthio___telehealth/widgets/app_bar/appbar_leading_image.dart';
import 'package:the_5_06_helthio___telehealth/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:the_5_06_helthio___telehealth/widgets/app_bar/custom_app_bar.dart';
import 'provider/location_provider.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  LocationScreenState createState() => LocationScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => LocationProvider(),
      child: LocationScreen(),
    );
  }
}

class LocationScreenState extends State<LocationScreen> {
  Completer<GoogleMapController> googleMapController = Completer();

  Completer<GoogleMapController> googleMapController1 = Completer();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          height: 768.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              _buildMap(context),
              _buildMap1(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 56.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgIconChevronLeft,
        margin: EdgeInsets.only(
          left: 32.h,
          top: 8.v,
          bottom: 8.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitleOne(
        text: "lbl_ambulance".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildMap(BuildContext context) {
    return SizedBox(
      height: 768.v,
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

  /// Section Widget
  Widget _buildMap1(BuildContext context) {
    return Container(
      height: 658.v,
      width: 355.h,
      margin: EdgeInsets.only(bottom: 27.v),
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
          googleMapController1.complete(controller);
        },
        zoomControlsEnabled: false,
        zoomGesturesEnabled: false,
        myLocationButtonEnabled: false,
        myLocationEnabled: false,
      ),
    );
  }
}
