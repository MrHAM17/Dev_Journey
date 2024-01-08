// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'transactiontype_item_model.dart';import '../../../core/app_export.dart';import 'layout24_item_model.dart';import 'package:the_6_17_housit___buyrentsell_property/data/models/selectionPopupModel/selection_popup_model.dart';import 'layout25_item_model.dart';import 'viewallreviews_item_model.dart';import 'propertydetails_item_model.dart';/// This class defines the variables used in the [property_details_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PropertyDetailsModel extends Equatable {PropertyDetailsModel({this.transactiontypeItemList = const [], this.layout24ItemList = const [], this.dropdownItemList = const [], this.layout25ItemList = const [], this.viewallreviewsItemList = const [], this.propertydetailsItemList = const [], }) {  }

List<TransactiontypeItemModel> transactiontypeItemList;

List<Layout24ItemModel> layout24ItemList;

List<SelectionPopupModel> dropdownItemList;

List<Layout25ItemModel> layout25ItemList;

List<ViewallreviewsItemModel> viewallreviewsItemList;

List<PropertydetailsItemModel> propertydetailsItemList;

PropertyDetailsModel copyWith({List<TransactiontypeItemModel>? transactiontypeItemList, List<Layout24ItemModel>? layout24ItemList, List<SelectionPopupModel>? dropdownItemList, List<Layout25ItemModel>? layout25ItemList, List<ViewallreviewsItemModel>? viewallreviewsItemList, List<PropertydetailsItemModel>? propertydetailsItemList, }) { return PropertyDetailsModel(
transactiontypeItemList : transactiontypeItemList ?? this.transactiontypeItemList,
layout24ItemList : layout24ItemList ?? this.layout24ItemList,
dropdownItemList : dropdownItemList ?? this.dropdownItemList,
layout25ItemList : layout25ItemList ?? this.layout25ItemList,
viewallreviewsItemList : viewallreviewsItemList ?? this.viewallreviewsItemList,
propertydetailsItemList : propertydetailsItemList ?? this.propertydetailsItemList,
); } 
@override List<Object?> get props => [transactiontypeItemList,layout24ItemList,dropdownItemList,layout25ItemList,viewallreviewsItemList,propertydetailsItemList];
 }
