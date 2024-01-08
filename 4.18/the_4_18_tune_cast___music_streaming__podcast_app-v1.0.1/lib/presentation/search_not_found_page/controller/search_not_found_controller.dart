import 'package:the_4_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';
import 'package:the_4_18_tune_cast___music_streaming__podcast_app/presentation/search_not_found_page/models/search_not_found_model.dart';

/// A controller class for the SearchNotFoundPage.
///
/// This class manages the state of the SearchNotFoundPage, including the
/// current searchNotFoundModelObj
class SearchNotFoundController extends GetxController {
  SearchNotFoundController(this.searchNotFoundModelObj);

  Rx<SearchNotFoundModel> searchNotFoundModelObj;
}
