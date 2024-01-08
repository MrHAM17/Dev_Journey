// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'promotionbanner_item_model.dart';import 'layout27_item_model.dart';import 'layout28_item_model.dart';import 'layout29_item_model.dart';import 'home_item_model.dart';/// This class defines the variables used in the [home_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeModel extends Equatable {HomeModel({this.promotionbannerItemList = const [], this.layout27ItemList = const [], this.layout28ItemList = const [], this.layout29ItemList = const [], this.homeItemList = const [], }) {  }

List<PromotionbannerItemModel> promotionbannerItemList;

List<Layout27ItemModel> layout27ItemList;

List<Layout28ItemModel> layout28ItemList;

List<Layout29ItemModel> layout29ItemList;

List<HomeItemModel> homeItemList;

HomeModel copyWith({List<PromotionbannerItemModel>? promotionbannerItemList, List<Layout27ItemModel>? layout27ItemList, List<Layout28ItemModel>? layout28ItemList, List<Layout29ItemModel>? layout29ItemList, List<HomeItemModel>? homeItemList, }) { return HomeModel(
promotionbannerItemList : promotionbannerItemList ?? this.promotionbannerItemList,
layout27ItemList : layout27ItemList ?? this.layout27ItemList,
layout28ItemList : layout28ItemList ?? this.layout28ItemList,
layout29ItemList : layout29ItemList ?? this.layout29ItemList,
homeItemList : homeItemList ?? this.homeItemList,
); } 
@override List<Object?> get props => [promotionbannerItemList,layout27ItemList,layout28ItemList,layout29ItemList,homeItemList];
 }
