import 'package:the_4_20_movie_streaming/core/app_export.dart';
import 'package:the_4_20_movie_streaming/presentation/detail_page_twelve_screen/models/detail_page_twelve_model.dart';

/// A controller class for the DetailPageTwelveScreen.
///
/// This class manages the state of the DetailPageTwelveScreen, including the
/// current detailPageTwelveModelObj
class DetailPageTwelveController extends GetxController {
  Rx<DetailPageTwelveModel> detailPageTwelveModelObj =
      DetailPageTwelveModel().obs;
}
