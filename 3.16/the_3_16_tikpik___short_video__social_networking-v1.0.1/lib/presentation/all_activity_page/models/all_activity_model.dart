// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'package:the_3_16_tikpik___short_video__social_networking/data/models/selectionPopupModel/selection_popup_model.dart';import '../../../core/app_export.dart';import 'followback_item_model.dart';import 'followback1_item_model.dart';/// This class defines the variables used in the [all_activity_page],
/// and is typically used to hold data that is passed between different parts of the application.
class AllActivityModel extends Equatable {AllActivityModel({this.dropdownItemList = const [], this.followbackItemList = const [], this.followback1ItemList = const [], }) {  }

List<SelectionPopupModel> dropdownItemList;

List<FollowbackItemModel> followbackItemList;

List<Followback1ItemModel> followback1ItemList;

AllActivityModel copyWith({List<SelectionPopupModel>? dropdownItemList, List<FollowbackItemModel>? followbackItemList, List<Followback1ItemModel>? followback1ItemList, }) { return AllActivityModel(
dropdownItemList : dropdownItemList ?? this.dropdownItemList,
followbackItemList : followbackItemList ?? this.followbackItemList,
followback1ItemList : followback1ItemList ?? this.followback1ItemList,
); } 
@override List<Object?> get props => [dropdownItemList,followbackItemList,followback1ItemList];
 }
