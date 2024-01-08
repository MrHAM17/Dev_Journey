import 'package:the_4_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'package:the_4_18_tune_cast___music_streaming__podcast_app/presentation/search_type_keyword_screen/models/search_type_keyword_model.dart';import 'package:flutter/material.dart';/// A controller class for the SearchTypeKeywordScreen.
///
/// This class manages the state of the SearchTypeKeywordScreen, including the
/// current searchTypeKeywordModelObj
class SearchTypeKeywordController extends GetxController {TextEditingController searchController = TextEditingController();

Rx<SearchTypeKeywordModel> searchTypeKeywordModelObj = SearchTypeKeywordModel().obs;

@override void onClose() { super.onClose(); searchController.dispose(); } 
 }
