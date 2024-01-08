import 'package:the_4_14_jusplay___movie_streaming_app/core/app_export.dart';
import 'package:the_4_14_jusplay___movie_streaming_app/presentation/downloaded_page/models/downloaded_model.dart';

/// A controller class for the DownloadedPage.
///
/// This class manages the state of the DownloadedPage, including the
/// current downloadedModelObj
class DownloadedController extends GetxController {
  DownloadedController(this.downloadedModelObj);

  Rx<DownloadedModel> downloadedModelObj;
}
