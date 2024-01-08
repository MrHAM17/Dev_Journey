import 'package:the_4_16_tikpik___short_video__social_networking/data/models/selectionPopupModel/selection_popup_model.dart';import '../../../core/app_export.dart';/// This class defines the variables used in the [all_activity_dropdown_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AllActivityDropdownModel {Rx<List<SelectionPopupModel>> dropdownItemList = Rx([SelectionPopupModel(id:1,title:"Item One",isSelected:true,),SelectionPopupModel(id:2,title:"Item Two",),SelectionPopupModel(id:3,title:"Item Three",)]);

 }
