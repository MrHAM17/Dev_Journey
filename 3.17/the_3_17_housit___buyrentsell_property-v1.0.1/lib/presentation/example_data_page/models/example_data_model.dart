// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'layout13_item_model.dart';/// This class defines the variables used in the [example_data_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ExampleDataModel extends Equatable {ExampleDataModel({this.layout13ItemList = const []}) {  }

List<Layout13ItemModel> layout13ItemList;

ExampleDataModel copyWith({List<Layout13ItemModel>? layout13ItemList}) { return ExampleDataModel(
layout13ItemList : layout13ItemList ?? this.layout13ItemList,
); } 
@override List<Object?> get props => [layout13ItemList];
 }
