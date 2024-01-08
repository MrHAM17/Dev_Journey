// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'searchresultsvideos_item_model.dart';/// This class defines the variables used in the [search_results_videos_page],
/// and is typically used to hold data that is passed between different parts of the application.
class SearchResultsVideosModel extends Equatable {SearchResultsVideosModel({this.searchresultsvideosItemList = const []}) {  }

List<SearchresultsvideosItemModel> searchresultsvideosItemList;

SearchResultsVideosModel copyWith({List<SearchresultsvideosItemModel>? searchresultsvideosItemList}) { return SearchResultsVideosModel(
searchresultsvideosItemList : searchresultsvideosItemList ?? this.searchresultsvideosItemList,
); } 
@override List<Object?> get props => [searchresultsvideosItemList];
 }
