// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'autolayouthorizontal3_item_model.dart';import 'autolayouthorizontal4_item_model.dart';/// This class defines the variables used in the [trending_hashtag_page],
/// and is typically used to hold data that is passed between different parts of the application.
class TrendingHashtagModel extends Equatable {TrendingHashtagModel({this.autolayouthorizontal3ItemList = const [], this.autolayouthorizontal4ItemList = const [], }) {  }

List<Autolayouthorizontal3ItemModel> autolayouthorizontal3ItemList;

List<Autolayouthorizontal4ItemModel> autolayouthorizontal4ItemList;

TrendingHashtagModel copyWith({List<Autolayouthorizontal3ItemModel>? autolayouthorizontal3ItemList, List<Autolayouthorizontal4ItemModel>? autolayouthorizontal4ItemList, }) { return TrendingHashtagModel(
autolayouthorizontal3ItemList : autolayouthorizontal3ItemList ?? this.autolayouthorizontal3ItemList,
autolayouthorizontal4ItemList : autolayouthorizontal4ItemList ?? this.autolayouthorizontal4ItemList,
); } 
@override List<Object?> get props => [autolayouthorizontal3ItemList,autolayouthorizontal4ItemList];
 }
