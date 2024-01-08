import 'package:the_4_07_comfort___hotel_booking_app/core/app_export.dart';
import 'package:the_4_07_comfort___hotel_booking_app/presentation/search_type_page/models/search_type_model.dart';

/// A controller class for the SearchTypePage.
///
/// This class manages the state of the SearchTypePage, including the
/// current searchTypeModelObj
class SearchTypeController extends GetxController {
  SearchTypeController(this.searchTypeModelObj);

  Rx<SearchTypeModel> searchTypeModelObj;
}
