// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'vertical_item_model.dart';/// This class defines the variables used in the [vertical_page],
/// and is typically used to hold data that is passed between different parts of the application.
class VerticalModel extends Equatable {VerticalModel({this.verticalItemList = const []}) {  }

List<VerticalItemModel> verticalItemList;

VerticalModel copyWith({List<VerticalItemModel>? verticalItemList}) { return VerticalModel(
verticalItemList : verticalItemList ?? this.verticalItemList,
); } 
@override List<Object?> get props => [verticalItemList];
 }
