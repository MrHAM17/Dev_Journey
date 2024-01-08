// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'layout15_item_model.dart';import 'layout17_item_model.dart';import '../../../core/app_export.dart';import 'shape_item_model.dart';import 'layout19_item_model.dart';import 'layout21_item_model.dart';import 'layout22_item_model.dart';import 'seventy_item_model.dart';/// This class defines the variables used in the [edit_form_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class EditFormModel extends Equatable {EditFormModel({this.layout15ItemList = const [], this.layout17ItemList = const [], this.shapeItemList = const [], this.layout19ItemList = const [], this.layout21ItemList = const [], this.layout22ItemList = const [], this.seventyItemList = const [], }) {  }

List<Layout15ItemModel> layout15ItemList;

List<Layout17ItemModel> layout17ItemList;

List<ShapeItemModel> shapeItemList;

List<Layout19ItemModel> layout19ItemList;

List<Layout21ItemModel> layout21ItemList;

List<Layout22ItemModel> layout22ItemList;

List<SeventyItemModel> seventyItemList;

EditFormModel copyWith({List<Layout15ItemModel>? layout15ItemList, List<Layout17ItemModel>? layout17ItemList, List<ShapeItemModel>? shapeItemList, List<Layout19ItemModel>? layout19ItemList, List<Layout21ItemModel>? layout21ItemList, List<Layout22ItemModel>? layout22ItemList, List<SeventyItemModel>? seventyItemList, }) { return EditFormModel(
layout15ItemList : layout15ItemList ?? this.layout15ItemList,
layout17ItemList : layout17ItemList ?? this.layout17ItemList,
shapeItemList : shapeItemList ?? this.shapeItemList,
layout19ItemList : layout19ItemList ?? this.layout19ItemList,
layout21ItemList : layout21ItemList ?? this.layout21ItemList,
layout22ItemList : layout22ItemList ?? this.layout22ItemList,
seventyItemList : seventyItemList ?? this.seventyItemList,
); } 
@override List<Object?> get props => [layout15ItemList,layout17ItemList,shapeItemList,layout19ItemList,layout21ItemList,layout22ItemList,seventyItemList];
 }
