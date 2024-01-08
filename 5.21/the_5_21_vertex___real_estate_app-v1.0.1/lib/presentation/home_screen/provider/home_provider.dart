import 'package:flutter/material.dart';import 'package:the_5_21_vertex___real_estate_app/core/app_export.dart';import 'package:the_5_21_vertex___real_estate_app/presentation/home_screen/models/home_model.dart';/// A provider class for the HomeScreen.
///
/// This provider manages the state of the HomeScreen, including the
/// current homeModelObj

// ignore_for_file: must_be_immutable
class HomeProvider extends ChangeNotifier {TextEditingController searchController = TextEditingController();

HomeModel homeModelObj = HomeModel();

@override void dispose() { super.dispose(); searchController.dispose(); } 
 }
