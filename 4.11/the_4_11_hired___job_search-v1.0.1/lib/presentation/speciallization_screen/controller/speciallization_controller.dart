import 'package:the_4_11_hired___job_search/core/app_export.dart';
import 'package:the_4_11_hired___job_search/presentation/speciallization_screen/models/speciallization_model.dart';

/// A controller class for the SpeciallizationScreen.
///
/// This class manages the state of the SpeciallizationScreen, including the
/// current speciallizationModelObj
class SpeciallizationController extends GetxController {
  Rx<SpeciallizationModel> speciallizationModelObj = SpeciallizationModel().obs;
}
