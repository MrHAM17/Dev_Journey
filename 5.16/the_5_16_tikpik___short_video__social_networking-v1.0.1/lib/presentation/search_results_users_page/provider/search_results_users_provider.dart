import 'package:flutter/material.dart';import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_5_16_tikpik___short_video__social_networking/presentation/search_results_users_page/models/search_results_users_model.dart';import '../models/searchresultsusers_item_model.dart';/// A provider class for the SearchResultsUsersPage.
///
/// This provider manages the state of the SearchResultsUsersPage, including the
/// current searchResultsUsersModelObj

// ignore_for_file: must_be_immutable
class SearchResultsUsersProvider extends ChangeNotifier {SearchResultsUsersModel searchResultsUsersModelObj = SearchResultsUsersModel();

@override void dispose() { super.dispose(); } 
 }
