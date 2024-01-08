// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'filter_item_model.dart';import '../../../core/app_export.dart';import 'layout14_item_model.dart';/// This class defines the variables used in the [result_filter_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ResultFilterModel extends Equatable {ResultFilterModel({this.filterItemList = const [], this.layout14ItemList = const [], }) {  }

List<FilterItemModel> filterItemList;

List<Layout14ItemModel> layout14ItemList;

ResultFilterModel copyWith({List<FilterItemModel>? filterItemList, List<Layout14ItemModel>? layout14ItemList, }) { return ResultFilterModel(
filterItemList : filterItemList ?? this.filterItemList,
layout14ItemList : layout14ItemList ?? this.layout14ItemList,
); } 
@override List<Object?> get props => [filterItemList,layout14ItemList];
 }
