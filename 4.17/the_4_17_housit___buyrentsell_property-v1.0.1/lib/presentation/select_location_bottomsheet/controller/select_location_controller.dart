import 'package:the_4_17_housit___buyrentsell_property/core/app_export.dart';
import 'package:the_4_17_housit___buyrentsell_property/presentation/select_location_bottomsheet/models/select_location_model.dart';

/// A controller class for the SelectLocationBottomsheet.
///
/// This class manages the state of the SelectLocationBottomsheet, including the
/// current selectLocationModelObj
class SelectLocationController extends GetxController {
  Rx<SelectLocationModel> selectLocationModelObj = SelectLocationModel().obs;
}
