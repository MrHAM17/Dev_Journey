import 'package:flutter/material.dart';import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_5_16_tikpik___short_video__social_networking/presentation/search_type_keyword_screen/models/search_type_keyword_model.dart';import '../models/autolayoutvertical1_item_model.dart';import '../models/autolayoutvertical2_item_model.dart';/// A provider class for the SearchTypeKeywordScreen.
///
/// This provider manages the state of the SearchTypeKeywordScreen, including the
/// current searchTypeKeywordModelObj

// ignore_for_file: must_be_immutable
class SearchTypeKeywordProvider extends ChangeNotifier {TextEditingController searchController = TextEditingController();

SearchTypeKeywordModel searchTypeKeywordModelObj = SearchTypeKeywordModel();

@override void dispose() { super.dispose(); searchController.dispose(); } 
 }
