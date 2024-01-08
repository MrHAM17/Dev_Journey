import 'package:the_4_14_jusplay___movie_streaming_app/core/app_export.dart';
import 'package:the_4_14_jusplay___movie_streaming_app/presentation/about_page/models/about_model.dart';

/// A controller class for the AboutPage.
///
/// This class manages the state of the AboutPage, including the
/// current aboutModelObj
class AboutController extends GetxController {
  AboutController(this.aboutModelObj);

  Rx<AboutModel> aboutModelObj;
}
