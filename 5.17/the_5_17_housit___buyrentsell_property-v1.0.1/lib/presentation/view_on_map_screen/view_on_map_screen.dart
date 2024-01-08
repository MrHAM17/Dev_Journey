import 'dart:async';import 'models/view_on_map_model.dart';import 'package:flutter/material.dart';import 'package:google_maps_flutter/google_maps_flutter.dart';import 'package:the_5_17_housit___buyrentsell_property/core/app_export.dart';import 'provider/view_on_map_provider.dart';class ViewOnMapScreen extends StatefulWidget {const ViewOnMapScreen({Key? key}) : super(key: key);

@override ViewOnMapScreenState createState() =>  ViewOnMapScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => ViewOnMapProvider(), child: ViewOnMapScreen()); } 
 }

// ignore_for_file: must_be_immutable
class ViewOnMapScreenState extends State<ViewOnMapScreen> {Completer<GoogleMapController> googleMapController = Completer();

@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: _buildViewonMap(context))); } 
/// Section Widget
Widget _buildViewonMap(BuildContext context) { return SizedBox(height: SizeUtils.height, width: double.maxFinite, child: GoogleMap(mapType: MapType.normal, initialCameraPosition: CameraPosition(target: LatLng(37.43296265331129, -122.08832357078792), zoom: 14.4746), onMapCreated: (GoogleMapController controller) {googleMapController.complete(controller);}, zoomControlsEnabled: false, zoomGesturesEnabled: false, myLocationButtonEnabled: false, myLocationEnabled: false)); } 
 }
