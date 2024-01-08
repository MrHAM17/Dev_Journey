import 'package:flutter/material.dart';import 'package:the_5_07_comfort___hotel_booking_app/core/app_export.dart';import 'package:the_5_07_comfort___hotel_booking_app/presentation/home_screen_tab_container_page/models/home_screen_tab_container_model.dart';/// A provider class for the HomeScreenTabContainerPage.
///
/// This provider manages the state of the HomeScreenTabContainerPage, including the
/// current homeScreenTabContainerModelObj

// ignore_for_file: must_be_immutable
class HomeScreenTabContainerProvider extends ChangeNotifier {TextEditingController searchController = TextEditingController();

HomeScreenTabContainerModel homeScreenTabContainerModelObj = HomeScreenTabContainerModel();

@override void dispose() { super.dispose(); searchController.dispose(); } 
 }
