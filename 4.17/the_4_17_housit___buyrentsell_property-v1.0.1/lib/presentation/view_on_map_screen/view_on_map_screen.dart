import 'controller/view_on_map_controller.dart';import 'dart:async';import 'package:flutter/material.dart';import 'package:google_maps_flutter/google_maps_flutter.dart';import 'package:the_4_17_housit___buyrentsell_property/core/app_export.dart';
// ignore_for_file: must_be_immutable
class ViewOnMapScreen extends GetWidget<ViewOnMapController> {ViewOnMapScreen({Key? key}) : super(key: key);

Completer<GoogleMapController> googleMapController = Completer();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: _buildViewonMap())); } 
/// Section Widget
Widget _buildViewonMap() { return SizedBox(height: SizeUtils.height, width: double.maxFinite, child: GoogleMap(mapType: MapType.normal, initialCameraPosition: CameraPosition(target: LatLng(37.43296265331129, -122.08832357078792), zoom: 14.4746), onMapCreated: (GoogleMapController controller) {googleMapController.complete(controller);}, zoomControlsEnabled: false, zoomGesturesEnabled: false, myLocationButtonEnabled: false, myLocationEnabled: false)); } 
 }
