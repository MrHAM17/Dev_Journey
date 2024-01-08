// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'follow_item_model.dart';import 'autolayouthorizontal_item_model.dart';/// This class defines the variables used in the [search_results_top_page],
/// and is typically used to hold data that is passed between different parts of the application.
class SearchResultsTopModel extends Equatable {SearchResultsTopModel({this.followItemList = const [], this.autolayouthorizontalItemList = const [], }) {  }

List<FollowItemModel> followItemList;

List<AutolayouthorizontalItemModel> autolayouthorizontalItemList;

SearchResultsTopModel copyWith({List<FollowItemModel>? followItemList, List<AutolayouthorizontalItemModel>? autolayouthorizontalItemList, }) { return SearchResultsTopModel(
followItemList : followItemList ?? this.followItemList,
autolayouthorizontalItemList : autolayouthorizontalItemList ?? this.autolayouthorizontalItemList,
); } 
@override List<Object?> get props => [followItemList,autolayouthorizontalItemList];
 }
