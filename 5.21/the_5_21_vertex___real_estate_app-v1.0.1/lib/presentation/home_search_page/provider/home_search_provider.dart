import 'package:flutter/material.dart';import 'package:the_5_21_vertex___real_estate_app/core/app_export.dart';import 'package:the_5_21_vertex___real_estate_app/presentation/home_search_page/models/home_search_model.dart';import '../models/homesearch_item_model.dart';/// A provider class for the HomeSearchPage.
///
/// This provider manages the state of the HomeSearchPage, including the
/// current homeSearchModelObj

// ignore_for_file: must_be_immutable
class HomeSearchProvider extends ChangeNotifier {TextEditingController searchController = TextEditingController();

HomeSearchModel homeSearchModelObj = HomeSearchModel();

@override void dispose() { super.dispose(); searchController.dispose(); } 
 }
