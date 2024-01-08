// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'layout2_item_model.dart';import 'layout4_item_model.dart';/// This class defines the variables used in the [form_detail_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class FormDetailModel extends Equatable {FormDetailModel({this.layout2ItemList = const [], this.layout4ItemList = const [], }) {  }

List<Layout2ItemModel> layout2ItemList;

List<Layout4ItemModel> layout4ItemList;

FormDetailModel copyWith({List<Layout2ItemModel>? layout2ItemList, List<Layout4ItemModel>? layout4ItemList, }) { return FormDetailModel(
layout2ItemList : layout2ItemList ?? this.layout2ItemList,
layout4ItemList : layout4ItemList ?? this.layout4ItemList,
); } 
@override List<Object?> get props => [layout2ItemList,layout4ItemList];
 }
