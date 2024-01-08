import 'package:flutter/material.dart';import 'package:the_5_01_e_commerce/core/app_export.dart';import 'package:the_5_01_e_commerce/presentation/explore_page/models/explore_model.dart';import '../models/categories_item_model.dart';import '../models/categories1_item_model.dart';/// A provider class for the ExplorePage.
///
/// This provider manages the state of the ExplorePage, including the
/// current exploreModelObj

// ignore_for_file: must_be_immutable
class ExploreProvider extends ChangeNotifier {TextEditingController searchController = TextEditingController();

ExploreModel exploreModelObj = ExploreModel();

@override void dispose() { super.dispose(); searchController.dispose(); } 
 }
