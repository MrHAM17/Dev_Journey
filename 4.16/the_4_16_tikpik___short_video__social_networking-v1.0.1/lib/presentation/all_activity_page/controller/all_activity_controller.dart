import 'package:the_4_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_4_16_tikpik___short_video__social_networking/presentation/all_activity_page/models/all_activity_model.dart';/// A controller class for the AllActivityPage.
///
/// This class manages the state of the AllActivityPage, including the
/// current allActivityModelObj
class AllActivityController extends GetxController {AllActivityController(this.allActivityModelObj);

Rx<AllActivityModel> allActivityModelObj;

SelectionPopupModel? selectedDropDownValue;

onSelected(dynamic value) { for (var element in allActivityModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} allActivityModelObj.value.dropdownItemList.refresh(); } 
 }
