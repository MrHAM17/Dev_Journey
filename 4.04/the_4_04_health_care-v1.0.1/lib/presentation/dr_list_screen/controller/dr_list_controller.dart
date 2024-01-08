import 'package:the_4_04_health_care/core/app_export.dart';
import 'package:the_4_04_health_care/presentation/dr_list_screen/models/dr_list_model.dart';

/// A controller class for the DrListScreen.
///
/// This class manages the state of the DrListScreen, including the
/// current drListModelObj
class DrListController extends GetxController {
  Rx<DrListModel> drListModelObj = DrListModel().obs;
}
