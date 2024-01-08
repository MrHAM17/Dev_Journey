// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'trending_item_model.dart';
import 'trending1_item_model.dart';
import 'trending2_item_model.dart';

/// This class defines the variables used in the [explore_ten_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ExploreTenModel extends Equatable {
  ExploreTenModel({
    this.trendingItemList = const [],
    this.trending1ItemList = const [],
    this.trending2ItemList = const [],
  }) {}

  List<TrendingItemModel> trendingItemList;

  List<Trending1ItemModel> trending1ItemList;

  List<Trending2ItemModel> trending2ItemList;

  ExploreTenModel copyWith({
    List<TrendingItemModel>? trendingItemList,
    List<Trending1ItemModel>? trending1ItemList,
    List<Trending2ItemModel>? trending2ItemList,
  }) {
    return ExploreTenModel(
      trendingItemList: trendingItemList ?? this.trendingItemList,
      trending1ItemList: trending1ItemList ?? this.trending1ItemList,
      trending2ItemList: trending2ItemList ?? this.trending2ItemList,
    );
  }

  @override
  List<Object?> get props =>
      [trendingItemList, trending1ItemList, trending2ItemList];
}
