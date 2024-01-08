// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'subscribe_item_model.dart';/// This class defines the variables used in the [subscribe_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SubscribeModel extends Equatable {SubscribeModel({this.subscribeItemList = const []}) {  }

List<SubscribeItemModel> subscribeItemList;

SubscribeModel copyWith({List<SubscribeItemModel>? subscribeItemList}) { return SubscribeModel(
subscribeItemList : subscribeItemList ?? this.subscribeItemList,
); } 
@override List<Object?> get props => [subscribeItemList];
 }
