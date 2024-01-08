import 'package:the_4_14_jusplay___movie_streaming_app/core/app_export.dart';
import 'package:the_4_14_jusplay___movie_streaming_app/presentation/similiar_page/models/similiar_model.dart';

/// A controller class for the SimiliarPage.
///
/// This class manages the state of the SimiliarPage, including the
/// current similiarModelObj
class SimiliarController extends GetxController {
  SimiliarController(this.similiarModelObj);

  Rx<SimiliarModel> similiarModelObj;
}
