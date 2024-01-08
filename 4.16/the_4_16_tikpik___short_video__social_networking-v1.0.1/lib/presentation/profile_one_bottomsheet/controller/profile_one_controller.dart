import 'package:the_4_16_tikpik___short_video__social_networking/core/app_export.dart';
import 'package:the_4_16_tikpik___short_video__social_networking/presentation/profile_one_bottomsheet/models/profile_one_model.dart';

/// A controller class for the ProfileOneBottomsheet.
///
/// This class manages the state of the ProfileOneBottomsheet, including the
/// current profileOneModelObj
class ProfileOneController extends GetxController {
  Rx<ProfileOneModel> profileOneModelObj = ProfileOneModel().obs;
}
