// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'weeklyranking_item_model.dart';/// This class defines the variables used in the [weekly_ranking_page],
/// and is typically used to hold data that is passed between different parts of the application.
class WeeklyRankingModel extends Equatable {WeeklyRankingModel({this.weeklyrankingItemList = const []}) {  }

List<WeeklyrankingItemModel> weeklyrankingItemList;

WeeklyRankingModel copyWith({List<WeeklyrankingItemModel>? weeklyrankingItemList}) { return WeeklyRankingModel(
weeklyrankingItemList : weeklyrankingItemList ?? this.weeklyrankingItemList,
); } 
@override List<Object?> get props => [weeklyrankingItemList];
 }
