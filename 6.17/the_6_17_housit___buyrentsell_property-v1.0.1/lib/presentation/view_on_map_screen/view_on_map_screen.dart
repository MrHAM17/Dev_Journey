import 'dart:async';import 'notifier/view_on_map_notifier.dart';import 'package:flutter/material.dart';import 'package:google_maps_flutter/google_maps_flutter.dart';import 'package:the_6_17_housit___buyrentsell_property/core/app_export.dart';class ViewOnMapScreen extends ConsumerStatefulWidget {const ViewOnMapScreen({Key? key}) : super(key: key);

@override ViewOnMapScreenState createState() =>  ViewOnMapScreenState();

 }

// ignore_for_file: must_be_immutable
class ViewOnMapScreenState extends ConsumerState<ViewOnMapScreen> {Completer<GoogleMapController> googleMapController = Completer();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: _buildViewonMap(context))); } 
/// Section Widget
Widget _buildViewonMap(BuildContext context) { return SizedBox(height: SizeUtils.height, width: double.maxFinite, child: GoogleMap(mapType: MapType.normal, initialCameraPosition: CameraPosition(target: LatLng(37.43296265331129, -122.08832357078792), zoom: 14.4746), onMapCreated: (GoogleMapController controller) {googleMapController.complete(controller);}, zoomControlsEnabled: false, zoomGesturesEnabled: false, myLocationButtonEnabled: false, myLocationEnabled: false)); } 
 }
