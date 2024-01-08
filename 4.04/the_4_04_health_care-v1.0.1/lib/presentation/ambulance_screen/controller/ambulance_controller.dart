import 'package:the_4_04_health_care/core/app_export.dart';
import 'package:the_4_04_health_care/presentation/ambulance_screen/models/ambulance_model.dart';

/// A controller class for the AmbulanceScreen.
///
/// This class manages the state of the AmbulanceScreen, including the
/// current ambulanceModelObj
class AmbulanceController extends GetxController {
  Rx<AmbulanceModel> ambulanceModelObj = AmbulanceModel().obs;
}
