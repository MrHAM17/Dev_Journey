import 'package:the_4_20_movie_streaming/core/app_export.dart';
import 'package:the_4_20_movie_streaming/presentation/detail_page_nine_screen/models/detail_page_nine_model.dart';

/// A controller class for the DetailPageNineScreen.
///
/// This class manages the state of the DetailPageNineScreen, including the
/// current detailPageNineModelObj
class DetailPageNineController extends GetxController {
  Rx<DetailPageNineModel> detailPageNineModelObj = DetailPageNineModel().obs;
}
