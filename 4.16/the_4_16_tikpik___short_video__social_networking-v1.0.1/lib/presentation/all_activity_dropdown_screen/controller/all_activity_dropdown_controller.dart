import 'package:the_4_16_tikpik___short_video__social_networking/core/app_export.dart';
import 'package:the_4_16_tikpik___short_video__social_networking/presentation/all_activity_dropdown_screen/models/all_activity_dropdown_model.dart';

/// A controller class for the AllActivityDropdownScreen.
///
/// This class manages the state of the AllActivityDropdownScreen, including the
/// current allActivityDropdownModelObj
class AllActivityDropdownController extends GetxController {
  Rx<AllActivityDropdownModel> allActivityDropdownModelObj =
      AllActivityDropdownModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  onSelected(dynamic value) {
    for (var element
        in allActivityDropdownModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    allActivityDropdownModelObj.value.dropdownItemList.refresh();
  }
}
