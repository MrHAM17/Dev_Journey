// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'golivetogether_item_model.dart';/// This class defines the variables used in the [go_live_together_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.
class GoLiveTogetherModel extends Equatable {GoLiveTogetherModel({this.golivetogetherItemList = const []}) {  }

List<GolivetogetherItemModel> golivetogetherItemList;

GoLiveTogetherModel copyWith({List<GolivetogetherItemModel>? golivetogetherItemList}) { return GoLiveTogetherModel(
golivetogetherItemList : golivetogetherItemList ?? this.golivetogetherItemList,
); } 
@override List<Object?> get props => [golivetogetherItemList];
 }
