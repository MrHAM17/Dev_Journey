import 'dart:async';import 'models/home_listing_model.dart';import 'package:flutter/material.dart';import 'package:google_maps_flutter/google_maps_flutter.dart';import 'package:the_5_21_vertex___real_estate_app/core/app_export.dart';import 'package:the_5_21_vertex___real_estate_app/presentation/home_search_page/home_search_page.dart';import 'package:the_5_21_vertex___real_estate_app/presentation/message_page/message_page.dart';import 'package:the_5_21_vertex___real_estate_app/presentation/my_home_page/my_home_page.dart';import 'package:the_5_21_vertex___real_estate_app/presentation/profile_page/profile_page.dart';import 'package:the_5_21_vertex___real_estate_app/widgets/custom_bottom_bar.dart';import 'provider/home_listing_provider.dart';class HomeListingScreen extends StatefulWidget {const HomeListingScreen({Key? key}) : super(key: key);

@override HomeListingScreenState createState() =>  HomeListingScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => HomeListingProvider(), child: HomeListingScreen()); } 
 }

// ignore_for_file: must_be_immutable
class HomeListingScreenState extends State<HomeListingScreen> {Completer<GoogleMapController> googleMapController = Completer();

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

@override void initState() { super.initState();NavigatorService.pushNamed(AppRoutes.homeListingSateliteScreen, ); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: SizedBox(height: 693.v, width: double.maxFinite, child: GoogleMap(mapType: MapType.normal, initialCameraPosition: CameraPosition(target: LatLng(37.43296265331129, -122.08832357078792), zoom: 14.4746), onMapCreated: (GoogleMapController controller) {googleMapController.complete(controller);}, zoomControlsEnabled: false, zoomGesturesEnabled: false, myLocationButtonEnabled: false, myLocationEnabled: false)), bottomNavigationBar: _buildBottomBar(context))); } 
/// Section Widget
Widget _buildBottomBar(BuildContext context) { return CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Home: return "/"; case BottomBarEnum.Message: return AppRoutes.messagePage; case BottomBarEnum.Discover: return AppRoutes.homeSearchPage; case BottomBarEnum.Myhome: return AppRoutes.myHomePage; case BottomBarEnum.Profile: return AppRoutes.profilePage; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(BuildContext context, String currentRoute, ) { switch (currentRoute) {case AppRoutes.messagePage: return MessagePage(); case AppRoutes.homeSearchPage: return HomeSearchPage(); case AppRoutes.myHomePage: return MyHomePage(); case AppRoutes.profilePage: return ProfilePage(); default: return DefaultWidget();} } 
 }
