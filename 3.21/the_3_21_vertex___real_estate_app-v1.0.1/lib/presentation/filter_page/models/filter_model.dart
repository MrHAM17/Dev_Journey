// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'package:the_3_21_vertex___real_estate_app/data/models/selectionPopupModel/selection_popup_model.dart';import 'home_item_model.dart';import 'options2_item_model.dart';/// This class defines the variables used in the [filter_page],
/// and is typically used to hold data that is passed between different parts of the application.
class FilterModel extends Equatable {FilterModel({this.dropdownItemList = const [], this.dropdownItemList1 = const [], this.dropdownItemList2 = const [], this.dropdownItemList3 = const [], this.homeItemList = const [], this.options2ItemList = const [], }) {  }

List<SelectionPopupModel> dropdownItemList;

List<SelectionPopupModel> dropdownItemList1;

List<SelectionPopupModel> dropdownItemList2;

List<SelectionPopupModel> dropdownItemList3;

List<HomeItemModel> homeItemList;

List<Options2ItemModel> options2ItemList;

FilterModel copyWith({List<SelectionPopupModel>? dropdownItemList, List<SelectionPopupModel>? dropdownItemList1, List<SelectionPopupModel>? dropdownItemList2, List<SelectionPopupModel>? dropdownItemList3, List<HomeItemModel>? homeItemList, List<Options2ItemModel>? options2ItemList, }) { return FilterModel(
dropdownItemList : dropdownItemList ?? this.dropdownItemList,
dropdownItemList1 : dropdownItemList1 ?? this.dropdownItemList1,
dropdownItemList2 : dropdownItemList2 ?? this.dropdownItemList2,
dropdownItemList3 : dropdownItemList3 ?? this.dropdownItemList3,
homeItemList : homeItemList ?? this.homeItemList,
options2ItemList : options2ItemList ?? this.options2ItemList,
); } 
@override List<Object?> get props => [dropdownItemList,dropdownItemList1,dropdownItemList2,dropdownItemList3,homeItemList,options2ItemList];
 }
