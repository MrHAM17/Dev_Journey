import 'package:the_4_16_tikpik___short_video__social_networking/data/models/selectionPopupModel/selection_popup_model.dart';import '../../../core/app_export.dart';import 'followback_item_model.dart';import 'followback1_item_model.dart';/// This class defines the variables used in the [all_activity_page],
/// and is typically used to hold data that is passed between different parts of the application.
class AllActivityModel {Rx<List<SelectionPopupModel>> dropdownItemList = Rx([SelectionPopupModel(id:1,title:"Item One",isSelected:true,),SelectionPopupModel(id:2,title:"Item Two",),SelectionPopupModel(id:3,title:"Item Three",)]);

Rx<List<FollowbackItemModel>> followbackItemList = Rx([FollowbackItemModel(charoletteHanlin:ImageConstant.imgEllipse14.obs,charoletteHanlin1: "Charolette Hanlin".obs,information: "Leave a comment on your video".obs,charoletteHanlin2:ImageConstant.imgImage60x60.obs),FollowbackItemModel(charoletteHanlin:ImageConstant.imgEllipse20.obs,charoletteHanlin1: "Annabel Rohan".obs,information: "Started following you".obs),FollowbackItemModel(charoletteHanlin:ImageConstant.imgEllipse12.obs,charoletteHanlin1: "Sanjuanita Ordonez".obs,information: "Liked your video".obs,charoletteHanlin2:ImageConstant.imgImage70.obs)]);

Rx<List<Followback1ItemModel>> followback1ItemList = Rx([Followback1ItemModel(clintonMcclure:ImageConstant.imgEllipse21.obs,clintonMcclure1: "Clinton Mcclure".obs,startedfollowingyou: "Started following you".obs)]);

 }
