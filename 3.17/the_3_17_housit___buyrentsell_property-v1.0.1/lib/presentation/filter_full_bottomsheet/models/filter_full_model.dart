// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'widget_item_model.dart';import 'widget2_item_model.dart';/// This class defines the variables used in the [filter_full_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.
class FilterFullModel extends Equatable {FilterFullModel({this.widgetItemList = const [], this.widget2ItemList = const [], }) {  }

List<WidgetItemModel> widgetItemList;

List<Widget2ItemModel> widget2ItemList;

FilterFullModel copyWith({List<WidgetItemModel>? widgetItemList, List<Widget2ItemModel>? widget2ItemList, }) { return FilterFullModel(
widgetItemList : widgetItemList ?? this.widgetItemList,
widget2ItemList : widget2ItemList ?? this.widget2ItemList,
); } 
@override List<Object?> get props => [widgetItemList,widget2ItemList];
 }
