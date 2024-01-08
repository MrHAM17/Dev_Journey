import 'controller/location_controller.dart';import 'dart:async';import 'package:flutter/material.dart';import 'package:google_maps_flutter/google_maps_flutter.dart';import 'package:the_4_07_comfort___hotel_booking_app/core/app_export.dart';import 'package:the_4_07_comfort___hotel_booking_app/widgets/app_bar/appbar_leading_image.dart';import 'package:the_4_07_comfort___hotel_booking_app/widgets/app_bar/appbar_title.dart';import 'package:the_4_07_comfort___hotel_booking_app/widgets/app_bar/custom_app_bar.dart';
// ignore_for_file: must_be_immutable
class LocationScreen extends GetWidget<LocationController> {LocationScreen({Key? key}) : super(key: key);

Completer<GoogleMapController> googleMapController = Completer();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: SizedBox(width: double.maxFinite, child: SizedBox(height: 882.v, width: double.maxFinite, child: Stack(alignment: Alignment.topCenter, children: [_buildImage(), CustomImageView(imagePath: ImageConstant.imgLinkedin, height: 50.v, width: 42.h, alignment: Alignment.topCenter, margin: EdgeInsets.only(top: 394.v)), _buildAppBar()]))))); } 
/// Section Widget
Widget _buildImage() { return SizedBox(height: 882.v, width: double.maxFinite, child: GoogleMap(mapType: MapType.normal, initialCameraPosition: CameraPosition(target: LatLng(37.43296265331129, -122.08832357078792), zoom: 14.4746), onMapCreated: (GoogleMapController controller) {googleMapController.complete(controller);}, zoomControlsEnabled: false, zoomGesturesEnabled: false, myLocationButtonEnabled: false, myLocationEnabled: false)); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(height: 114.v, leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 75.v), onTap: () {onTapArrowDown();}), title: AppbarTitle(text: "lbl_hotel_location".tr, margin: EdgeInsets.only(left: 16.h, top: 12.v, bottom: 72.v)), styleType: Style.bgGradientnamegray80000namegray900); } 

/// Navigates to the previous screen.
onTapArrowDown() { Get.back(); } 
 }
