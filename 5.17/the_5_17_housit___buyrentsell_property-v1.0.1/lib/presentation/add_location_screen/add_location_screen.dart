import 'dart:async';import 'models/add_location_model.dart';import 'package:flutter/material.dart';import 'package:google_maps_flutter/google_maps_flutter.dart';import 'package:the_5_17_housit___buyrentsell_property/core/app_export.dart';import 'package:the_5_17_housit___buyrentsell_property/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:the_5_17_housit___buyrentsell_property/widgets/app_bar/appbar_subtitle.dart';import 'package:the_5_17_housit___buyrentsell_property/widgets/app_bar/custom_app_bar.dart';import 'package:the_5_17_housit___buyrentsell_property/widgets/custom_elevated_button.dart';import 'package:the_5_17_housit___buyrentsell_property/widgets/custom_icon_button.dart';import 'provider/add_location_provider.dart';class AddLocationScreen extends StatefulWidget {const AddLocationScreen({Key? key}) : super(key: key);

@override AddLocationScreenState createState() =>  AddLocationScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => AddLocationProvider(), child: AddLocationScreen()); } 
 }

// ignore_for_file: must_be_immutable
class AddLocationScreenState extends State<AddLocationScreen> {Completer<GoogleMapController> googleMapController = Completer();

@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 11.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [SizedBox(height: 38.v), Text("msg_where_is_the_location".tr, style: theme.textTheme.headlineSmall), SizedBox(height: 43.v), _buildLinkedin(context), SizedBox(height: 20.v), _buildLayout(context), SizedBox(height: 82.v), CustomImageView(imagePath: ImageConstant.imageNotFound, height: 1.v, width: 100.h, alignment: Alignment.center)])), bottomNavigationBar: _buildNext(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 74.h, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 24.h, top: 3.v, bottom: 3.v), onTap: () {onTapArrowLeft(context);}), centerTitle: true, title: AppbarSubtitle(text: "lbl_add_listing".tr)); } 
/// Section Widget
Widget _buildLinkedin(BuildContext context) { return Padding(padding: EdgeInsets.only(right: 17.h), child: Row(children: [CustomIconButton(height: 50.adaptSize, width: 50.adaptSize, padding: EdgeInsets.all(15.h), child: CustomImageView(imagePath: ImageConstant.imgLinkedinBlueGray600)), Expanded(child: Container(width: 244.h, margin: EdgeInsets.only(left: 15.h, top: 8.v, bottom: 5.v), child: Text("msg_jl_cisangkuy_citarum".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.bodySmall!.copyWith(height: 1.50))))])); } 
/// Section Widget
Widget _buildLayout(BuildContext context) { return Card(clipBehavior: Clip.antiAlias, elevation: 0, shape: RoundedRectangleBorder(borderRadius: BorderRadiusStyle.roundedBorder25), child: Container(height: 356.v, width: 327.h, decoration: BoxDecoration(borderRadius: BorderRadiusStyle.roundedBorder25), child: Stack(alignment: Alignment.bottomCenter, children: [SizedBox(height: 356.v, width: 327.h, child: GoogleMap(mapType: MapType.normal, initialCameraPosition: CameraPosition(target: LatLng(37.43296265331129, -122.08832357078792), zoom: 14.4746), onMapCreated: (GoogleMapController controller) {googleMapController.complete(controller);}, zoomControlsEnabled: false, zoomGesturesEnabled: false, myLocationButtonEnabled: false, myLocationEnabled: false)), Align(alignment: Alignment.bottomCenter, child: Container(padding: EdgeInsets.symmetric(horizontal: 112.h, vertical: 16.v), decoration: AppDecoration.fillWhiteA, child: Text("msg_select_on_the_map".tr, style: CustomTextStyles.bodySmallBluegray80001_2))), CustomImageView(imagePath: ImageConstant.imgLinkedinPrimary, height: 51.v, width: 34.h, alignment: Alignment.topCenter, margin: EdgeInsets.only(top: 79.v))]))); } 
/// Section Widget
Widget _buildNext(BuildContext context) { return CustomElevatedButton(text: "lbl_next".tr, margin: EdgeInsets.only(left: 25.h, right: 23.h, bottom: 24.v), onPressed: () {onTapNext(context);}); } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
/// Navigates to the addPhotosScreen when the action is triggered.
onTapNext(BuildContext context) { NavigatorService.pushNamed(AppRoutes.addPhotosScreen, ); } 
 }
