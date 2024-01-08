import 'package:the_4_05_blog_app/core/app_export.dart';
import 'package:the_4_05_blog_app/presentation/interests_topics_page/models/interests_topics_model.dart';

/// A controller class for the InterestsTopicsPage.
///
/// This class manages the state of the InterestsTopicsPage, including the
/// current interestsTopicsModelObj
class InterestsTopicsController extends GetxController {
  InterestsTopicsController(this.interestsTopicsModelObj);

  Rx<InterestsTopicsModel> interestsTopicsModelObj;
}
