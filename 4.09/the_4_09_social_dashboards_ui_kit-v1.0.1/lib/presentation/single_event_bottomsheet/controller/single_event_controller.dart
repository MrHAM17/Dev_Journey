import 'package:the_4_09_social_dashboards_ui_kit/core/app_export.dart';
import 'package:the_4_09_social_dashboards_ui_kit/presentation/single_event_bottomsheet/models/single_event_model.dart';

/// A controller class for the SingleEventBottomsheet.
///
/// This class manages the state of the SingleEventBottomsheet, including the
/// current singleEventModelObj
class SingleEventController extends GetxController {
  Rx<SingleEventModel> singleEventModelObj = SingleEventModel().obs;
}
