import 'package:flutter/material.dart';
import 'package:the_5_07_comfort___hotel_booking_app/core/app_export.dart';
import 'package:the_5_07_comfort___hotel_booking_app/presentation/search_type_page/models/search_type_model.dart';

/// A provider class for the SearchTypePage.
///
/// This provider manages the state of the SearchTypePage, including the
/// current searchTypeModelObj
class SearchTypeProvider extends ChangeNotifier {
  SearchTypeModel searchTypeModelObj = SearchTypeModel();

  @override
  void dispose() {
    super.dispose();
  }
}
