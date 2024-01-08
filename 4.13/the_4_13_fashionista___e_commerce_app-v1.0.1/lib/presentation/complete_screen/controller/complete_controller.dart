import 'package:the_4_13_fashionista___e_commerce_app/core/app_export.dart';
import 'package:the_4_13_fashionista___e_commerce_app/presentation/complete_screen/models/complete_model.dart';

/// A controller class for the CompleteScreen.
///
/// This class manages the state of the CompleteScreen, including the
/// current completeModelObj
class CompleteController extends GetxController {
  Rx<CompleteModel> completeModelObj = CompleteModel().obs;
}
