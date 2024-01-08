// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'autolayoutvertical1_item_model.dart';import 'autolayoutvertical2_item_model.dart';/// This class defines the variables used in the [search_type_keyword_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SearchTypeKeywordModel extends Equatable {SearchTypeKeywordModel({this.autolayoutvertical1ItemList = const [], this.autolayoutvertical2ItemList = const [], }) {  }

List<Autolayoutvertical1ItemModel> autolayoutvertical1ItemList;

List<Autolayoutvertical2ItemModel> autolayoutvertical2ItemList;

SearchTypeKeywordModel copyWith({List<Autolayoutvertical1ItemModel>? autolayoutvertical1ItemList, List<Autolayoutvertical2ItemModel>? autolayoutvertical2ItemList, }) { return SearchTypeKeywordModel(
autolayoutvertical1ItemList : autolayoutvertical1ItemList ?? this.autolayoutvertical1ItemList,
autolayoutvertical2ItemList : autolayoutvertical2ItemList ?? this.autolayoutvertical2ItemList,
); } 
@override List<Object?> get props => [autolayoutvertical1ItemList,autolayoutvertical2ItemList];
 }
