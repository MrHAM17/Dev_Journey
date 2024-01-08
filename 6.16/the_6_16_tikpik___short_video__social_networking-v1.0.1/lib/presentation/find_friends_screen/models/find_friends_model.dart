// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'findfriends_item_model.dart';/// This class defines the variables used in the [find_friends_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class FindFriendsModel extends Equatable {FindFriendsModel({this.findfriendsItemList = const []}) {  }

List<FindfriendsItemModel> findfriendsItemList;

FindFriendsModel copyWith({List<FindfriendsItemModel>? findfriendsItemList}) { return FindFriendsModel(
findfriendsItemList : findfriendsItemList ?? this.findfriendsItemList,
); } 
@override List<Object?> get props => [findfriendsItemList];
 }
