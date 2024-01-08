import 'dart:async';import 'models/filter_choose_location_model.dart';import 'package:flutter/material.dart';import 'package:google_maps_flutter/google_maps_flutter.dart';import 'package:the_5_17_housit___buyrentsell_property/core/app_export.dart';import 'provider/filter_choose_location_provider.dart';class FilterChooseLocationScreen extends StatefulWidget {const FilterChooseLocationScreen({Key? key}) : super(key: key);

@override FilterChooseLocationScreenState createState() =>  FilterChooseLocationScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => FilterChooseLocationProvider(), child: FilterChooseLocationScreen()); } 
 }

// ignore_for_file: must_be_immutable
class FilterChooseLocationScreenState extends State<FilterChooseLocationScreen> {Completer<GoogleMapController> googleMapController = Completer();

@override void initState() { super.initState();NavigatorService.pushNamed(AppRoutes.resultFilterScreen, ); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: _buildFilterChoose(context))); } 
/// Section Widget
Widget _buildFilterChoose(BuildContext context) { return SizedBox(height: SizeUtils.height, width: double.maxFinite, child: GoogleMap(mapType: MapType.normal, initialCameraPosition: CameraPosition(target: LatLng(37.43296265331129, -122.08832357078792), zoom: 14.4746), onMapCreated: (GoogleMapController controller) {googleMapController.complete(controller);}, zoomControlsEnabled: false, zoomGesturesEnabled: false, myLocationButtonEnabled: false, myLocationEnabled: false)); } 
 }
