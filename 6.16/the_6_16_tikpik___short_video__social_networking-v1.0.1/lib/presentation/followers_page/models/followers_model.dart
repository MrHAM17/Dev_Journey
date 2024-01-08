// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'followers_item_model.dart';/// This class defines the variables used in the [followers_page],
/// and is typically used to hold data that is passed between different parts of the application.
class FollowersModel extends Equatable {FollowersModel({this.followersItemList = const []}) {  }

List<FollowersItemModel> followersItemList;

FollowersModel copyWith({List<FollowersItemModel>? followersItemList}) { return FollowersModel(
followersItemList : followersItemList ?? this.followersItemList,
); } 
@override List<Object?> get props => [followersItemList];
 }
