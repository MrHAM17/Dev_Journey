// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'trending_item_model.dart';

/// This class defines the variables used in the [trending_page],
/// and is typically used to hold data that is passed between different parts of the application.
class TrendingModel extends Equatable {
  TrendingModel({this.trendingItemList = const []}) {}

  List<TrendingItemModel> trendingItemList;

  TrendingModel copyWith({List<TrendingItemModel>? trendingItemList}) {
    return TrendingModel(
      trendingItemList: trendingItemList ?? this.trendingItemList,
    );
  }

  @override
  List<Object?> get props => [trendingItemList];
}
