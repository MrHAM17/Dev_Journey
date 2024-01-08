import 'package:the_4_14_jusplay___movie_streaming_app/core/app_export.dart';
import 'package:the_4_14_jusplay___movie_streaming_app/presentation/category_comedy_screen/models/category_comedy_model.dart';

/// A controller class for the CategoryComedyScreen.
///
/// This class manages the state of the CategoryComedyScreen, including the
/// current categoryComedyModelObj
class CategoryComedyController extends GetxController {
  Rx<CategoryComedyModel> categoryComedyModelObj = CategoryComedyModel().obs;
}
