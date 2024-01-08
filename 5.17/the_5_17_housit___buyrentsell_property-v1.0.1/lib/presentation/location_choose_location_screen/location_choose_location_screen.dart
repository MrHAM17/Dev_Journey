import 'dart:async';import 'models/location_choose_location_model.dart';import 'package:flutter/material.dart';import 'package:google_maps_flutter/google_maps_flutter.dart';import 'package:the_5_17_housit___buyrentsell_property/core/app_export.dart';import 'provider/location_choose_location_provider.dart';class LocationChooseLocationScreen extends StatefulWidget {const LocationChooseLocationScreen({Key? key}) : super(key: key);

@override LocationChooseLocationScreenState createState() =>  LocationChooseLocationScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => LocationChooseLocationProvider(), child: LocationChooseLocationScreen()); } 
 }

// ignore_for_file: must_be_immutable
class LocationChooseLocationScreenState extends State<LocationChooseLocationScreen> {Completer<GoogleMapController> googleMapController = Completer();

@override void initState() { super.initState();NavigatorService.pushNamed(AppRoutes.locationFillScreen, ); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: _buildLocationChoose(context))); } 
/// Section Widget
Widget _buildLocationChoose(BuildContext context) { return SizedBox(height: SizeUtils.height, width: double.maxFinite, child: GoogleMap(mapType: MapType.normal, initialCameraPosition: CameraPosition(target: LatLng(37.43296265331129, -122.08832357078792), zoom: 14.4746), onMapCreated: (GoogleMapController controller) {googleMapController.complete(controller);}, zoomControlsEnabled: false, zoomGesturesEnabled: false, myLocationButtonEnabled: false, myLocationEnabled: false)); } 
 }
