import 'package:the_4_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';
import 'package:the_4_18_tune_cast___music_streaming__podcast_app/presentation/logout_bottomsheet/models/logout_model.dart';

/// A controller class for the LogoutBottomsheet.
///
/// This class manages the state of the LogoutBottomsheet, including the
/// current logoutModelObj
class LogoutController extends GetxController {
  Rx<LogoutModel> logoutModelObj = LogoutModel().obs;
}
