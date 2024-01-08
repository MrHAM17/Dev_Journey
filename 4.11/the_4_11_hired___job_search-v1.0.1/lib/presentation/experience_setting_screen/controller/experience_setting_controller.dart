import 'package:the_4_11_hired___job_search/core/app_export.dart';
import 'package:the_4_11_hired___job_search/presentation/experience_setting_screen/models/experience_setting_model.dart';

/// A controller class for the ExperienceSettingScreen.
///
/// This class manages the state of the ExperienceSettingScreen, including the
/// current experienceSettingModelObj
class ExperienceSettingController extends GetxController {
  Rx<ExperienceSettingModel> experienceSettingModelObj =
      ExperienceSettingModel().obs;
}
