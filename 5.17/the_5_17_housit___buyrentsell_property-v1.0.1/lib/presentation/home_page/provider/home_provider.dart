import 'package:flutter/material.dart';import 'package:the_5_17_housit___buyrentsell_property/core/app_export.dart';import 'package:the_5_17_housit___buyrentsell_property/presentation/home_page/models/home_model.dart';import '../models/promotionbanner_item_model.dart';import '../models/layout27_item_model.dart';import '../models/layout28_item_model.dart';import '../models/layout29_item_model.dart';import '../models/home_item_model.dart';/// A provider class for the HomePage.
///
/// This provider manages the state of the HomePage, including the
/// current homeModelObj

// ignore_for_file: must_be_immutable
class HomeProvider extends ChangeNotifier {HomeModel homeModelObj = HomeModel();

@override void dispose() { super.dispose(); } 
 }
