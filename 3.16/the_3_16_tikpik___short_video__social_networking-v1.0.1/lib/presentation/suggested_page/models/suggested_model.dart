// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'suggested_item_model.dart';/// This class defines the variables used in the [suggested_page],
/// and is typically used to hold data that is passed between different parts of the application.
class SuggestedModel extends Equatable {SuggestedModel({this.suggestedItemList = const []}) {  }

List<SuggestedItemModel> suggestedItemList;

SuggestedModel copyWith({List<SuggestedItemModel>? suggestedItemList}) { return SuggestedModel(
suggestedItemList : suggestedItemList ?? this.suggestedItemList,
); } 
@override List<Object?> get props => [suggestedItemList];
 }
