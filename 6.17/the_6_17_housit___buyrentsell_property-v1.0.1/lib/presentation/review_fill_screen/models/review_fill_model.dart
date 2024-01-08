// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'layout_item_model.dart';/// This class defines the variables used in the [review_fill_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ReviewFillModel extends Equatable {ReviewFillModel({this.layoutItemList = const []}) {  }

List<LayoutItemModel> layoutItemList;

ReviewFillModel copyWith({List<LayoutItemModel>? layoutItemList}) { return ReviewFillModel(
layoutItemList : layoutItemList ?? this.layoutItemList,
); } 
@override List<Object?> get props => [layoutItemList];
 }
