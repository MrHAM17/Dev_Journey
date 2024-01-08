// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'searchresultsusers_item_model.dart';/// This class defines the variables used in the [search_results_users_page],
/// and is typically used to hold data that is passed between different parts of the application.
class SearchResultsUsersModel extends Equatable {SearchResultsUsersModel({this.searchresultsusersItemList = const []}) {  }

List<SearchresultsusersItemModel> searchresultsusersItemList;

SearchResultsUsersModel copyWith({List<SearchresultsusersItemModel>? searchresultsusersItemList}) { return SearchResultsUsersModel(
searchresultsusersItemList : searchresultsusersItemList ?? this.searchresultsusersItemList,
); } 
@override List<Object?> get props => [searchresultsusersItemList];
 }
