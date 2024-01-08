import 'package:the_4_15_safebank___mobile_banking_app/core/app_export.dart';
import 'package:the_4_15_safebank___mobile_banking_app/presentation/atm_location_screen/models/atm_location_model.dart';

/// A controller class for the AtmLocationScreen.
///
/// This class manages the state of the AtmLocationScreen, including the
/// current atmLocationModelObj
class AtmLocationController extends GetxController {
  Rx<AtmLocationModel> atmLocationModelObj = AtmLocationModel().obs;
}
