// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'follow_item_model.dart';import 'teenagedream_item_model.dart';/// This class defines the variables used in the [search_result_top_page],
/// and is typically used to hold data that is passed between different parts of the application.
class SearchResultTopModel extends Equatable {SearchResultTopModel({this.followItemList = const [], this.teenagedreamItemList = const [], }) {  }

List<FollowItemModel> followItemList;

List<TeenagedreamItemModel> teenagedreamItemList;

SearchResultTopModel copyWith({List<FollowItemModel>? followItemList, List<TeenagedreamItemModel>? teenagedreamItemList, }) { return SearchResultTopModel(
followItemList : followItemList ?? this.followItemList,
teenagedreamItemList : teenagedreamItemList ?? this.teenagedreamItemList,
); } 
@override List<Object?> get props => [followItemList,teenagedreamItemList];
 }
