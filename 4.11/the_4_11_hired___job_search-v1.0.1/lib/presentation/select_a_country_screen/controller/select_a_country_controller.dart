import 'package:the_4_11_hired___job_search/core/app_export.dart';
import 'package:the_4_11_hired___job_search/presentation/select_a_country_screen/models/select_a_country_model.dart';

/// A controller class for the SelectACountryScreen.
///
/// This class manages the state of the SelectACountryScreen, including the
/// current selectACountryModelObj
class SelectACountryController extends GetxController {
  Rx<SelectACountryModel> selectACountryModelObj = SelectACountryModel().obs;

  Rx<String> radioGroup = "".obs;
}
