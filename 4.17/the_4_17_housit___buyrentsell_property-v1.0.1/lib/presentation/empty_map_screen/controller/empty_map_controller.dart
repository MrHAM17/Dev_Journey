import 'package:the_4_17_housit___buyrentsell_property/core/app_export.dart';
import 'package:the_4_17_housit___buyrentsell_property/presentation/empty_map_screen/models/empty_map_model.dart';

/// A controller class for the EmptyMapScreen.
///
/// This class manages the state of the EmptyMapScreen, including the
/// current emptyMapModelObj
class EmptyMapController extends GetxController {
  Rx<EmptyMapModel> emptyMapModelObj = EmptyMapModel().obs;
}
