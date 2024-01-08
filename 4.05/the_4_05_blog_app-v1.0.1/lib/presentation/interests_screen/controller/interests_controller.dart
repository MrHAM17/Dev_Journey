import 'package:the_4_05_blog_app/core/app_export.dart';
import 'package:the_4_05_blog_app/presentation/interests_screen/models/interests_model.dart';

/// A controller class for the InterestsScreen.
///
/// This class manages the state of the InterestsScreen, including the
/// current interestsModelObj
class InterestsController extends GetxController {
  Rx<InterestsModel> interestsModelObj = InterestsModel().obs;
}
