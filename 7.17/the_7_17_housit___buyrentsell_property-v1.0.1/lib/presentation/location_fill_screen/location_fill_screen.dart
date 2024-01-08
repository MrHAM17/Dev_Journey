import 'dart:async';import 'package:flutter/material.dart';import 'package:google_maps_flutter/google_maps_flutter.dart';import 'package:the_7_17_housit___buyrentsell_property/core/app_export.dart';import 'package:the_7_17_housit___buyrentsell_property/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:the_7_17_housit___buyrentsell_property/widgets/app_bar/appbar_trailing_button.dart';import 'package:the_7_17_housit___buyrentsell_property/widgets/app_bar/custom_app_bar.dart';import 'package:the_7_17_housit___buyrentsell_property/widgets/custom_elevated_button.dart';
// ignore_for_file: must_be_immutable
class LocationFillScreen extends StatelessWidget {LocationFillScreen({Key? key}) : super(key: key);

Completer<GoogleMapController> googleMapController = Completer();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 11.v), child: Column(children: [SizedBox(height: 40.v), Align(alignment: Alignment.centerLeft, child: Text("Add your location 📍 ", style: theme.textTheme.headlineSmall)), SizedBox(height: 30.v), Align(alignment: Alignment.centerLeft, child: Text("You can edit this later on your account setting.", style: theme.textTheme.bodyMedium)), SizedBox(height: 50.v), _buildFrame(context), SizedBox(height: 15.v), _buildFormLocation(context), SizedBox(height: 67.v), CustomImageView(imagePath: ImageConstant.imageNotFound, height: 1.v, width: 100.h)])), bottomNavigationBar: _buildNext(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 74.h, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 24.h, top: 3.v, bottom: 3.v), onTap: () {onTapArrowLeft(context);}), actions: [AppbarTrailingButton(margin: EdgeInsets.fromLTRB(24.h, 10.v, 24.h, 8.v))]); } 
/// Section Widget
Widget _buildSelectOnMap(BuildContext context) { return Align(alignment: Alignment.bottomCenter, child: Container(padding: EdgeInsets.symmetric(horizontal: 116.h, vertical: 15.v), decoration: AppDecoration.fillWhiteA, child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 2.v), Text("select on map", style: CustomTextStyles.titleSmallMedium)]))); } 
/// Section Widget
Widget _buildFrame(BuildContext context) { return Card(clipBehavior: Clip.antiAlias, elevation: 0, shape: RoundedRectangleBorder(borderRadius: BorderRadiusStyle.roundedBorder25), child: Container(height: 300.v, width: 327.h, decoration: BoxDecoration(borderRadius: BorderRadiusStyle.roundedBorder25), child: Stack(alignment: Alignment.bottomCenter, children: [SizedBox(height: 300.v, width: 327.h, child: GoogleMap(mapType: MapType.normal, initialCameraPosition: CameraPosition(target: LatLng(37.43296265331129, -122.08832357078792), zoom: 14.4746), onMapCreated: (GoogleMapController controller) {googleMapController.complete(controller);}, zoomControlsEnabled: false, zoomGesturesEnabled: false, myLocationButtonEnabled: false, myLocationEnabled: false)), _buildSelectOnMap(context), CustomImageView(imagePath: ImageConstant.imgLinkedinOrange300, height: 51.v, width: 34.h, alignment: Alignment.topLeft, margin: EdgeInsets.only(left: 122.h, top: 87.v))]))); } 
/// Section Widget
Widget _buildFormLocation(BuildContext context) { return Container(padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 24.v), decoration: AppDecoration.fillGray.copyWith(borderRadius: BorderRadiusStyle.circleBorder12), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgLinkedinDeepOrangeA20020x20, height: 20.adaptSize, width: 20.adaptSize), Padding(padding: EdgeInsets.only(left: 10.h, bottom: 2.v), child: Text("West Jakarta", style: theme.textTheme.titleSmall)), Spacer(), CustomImageView(imagePath: ImageConstant.imgArrowRight, height: 20.adaptSize, width: 20.adaptSize)])); } 
/// Section Widget
Widget _buildNext(BuildContext context) { return CustomElevatedButton(text: "Next", margin: EdgeInsets.only(left: 25.h, right: 23.h, bottom: 24.v), onPressed: () {onTapNext(context);}); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 
/// Navigates to the preferableScreen when the action is triggered.
onTapNext(BuildContext context) { Navigator.pushNamed(context, AppRoutes.preferableScreen); } 
 }
