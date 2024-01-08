// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'searchresultssounds_item_model.dart';/// This class defines the variables used in the [search_results_sounds_page],
/// and is typically used to hold data that is passed between different parts of the application.
class SearchResultsSoundsModel extends Equatable {SearchResultsSoundsModel({this.searchresultssoundsItemList = const []}) {  }

List<SearchresultssoundsItemModel> searchresultssoundsItemList;

SearchResultsSoundsModel copyWith({List<SearchresultssoundsItemModel>? searchresultssoundsItemList}) { return SearchResultsSoundsModel(
searchresultssoundsItemList : searchresultssoundsItemList ?? this.searchresultssoundsItemList,
); } 
@override List<Object?> get props => [searchresultssoundsItemList];
 }
