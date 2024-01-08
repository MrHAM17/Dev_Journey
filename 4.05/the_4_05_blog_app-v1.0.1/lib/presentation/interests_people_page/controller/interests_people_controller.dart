import 'package:the_4_05_blog_app/core/app_export.dart';
import 'package:the_4_05_blog_app/presentation/interests_people_page/models/interests_people_model.dart';

/// A controller class for the InterestsPeoplePage.
///
/// This class manages the state of the InterestsPeoplePage, including the
/// current interestsPeopleModelObj
class InterestsPeopleController extends GetxController {
  InterestsPeopleController(this.interestsPeopleModelObj);

  Rx<InterestsPeopleModel> interestsPeopleModelObj;
}
