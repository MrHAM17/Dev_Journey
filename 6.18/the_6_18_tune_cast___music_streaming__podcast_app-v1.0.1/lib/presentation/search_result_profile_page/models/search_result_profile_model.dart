// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'fortyfive_item_model.dart';import 'following_item_model.dart';/// This class defines the variables used in the [search_result_profile_page],
/// and is typically used to hold data that is passed between different parts of the application.
class SearchResultProfileModel extends Equatable {SearchResultProfileModel({this.fortyfiveItemList = const [], this.followingItemList = const [], }) {  }

List<FortyfiveItemModel> fortyfiveItemList;

List<FollowingItemModel> followingItemList;

SearchResultProfileModel copyWith({List<FortyfiveItemModel>? fortyfiveItemList, List<FollowingItemModel>? followingItemList, }) { return SearchResultProfileModel(
fortyfiveItemList : fortyfiveItemList ?? this.fortyfiveItemList,
followingItemList : followingItemList ?? this.followingItemList,
); } 
@override List<Object?> get props => [fortyfiveItemList,followingItemList];
 }
