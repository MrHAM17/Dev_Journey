// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'viewers_item_model.dart';/// This class defines the variables used in the [viewers_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.
class ViewersModel extends Equatable {ViewersModel({this.viewersItemList = const []}) {  }

List<ViewersItemModel> viewersItemList;

ViewersModel copyWith({List<ViewersItemModel>? viewersItemList}) { return ViewersModel(
viewersItemList : viewersItemList ?? this.viewersItemList,
); } 
@override List<Object?> get props => [viewersItemList];
 }
