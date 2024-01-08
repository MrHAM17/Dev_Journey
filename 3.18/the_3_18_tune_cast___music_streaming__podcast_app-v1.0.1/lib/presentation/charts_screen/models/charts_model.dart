// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'topalbumsglobal_item_model.dart';import 'topalbumsglobal1_item_model.dart';/// This class defines the variables used in the [charts_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ChartsModel extends Equatable {ChartsModel({this.topalbumsglobalItemList = const [], this.topalbumsglobal1ItemList = const [], }) {  }

List<TopalbumsglobalItemModel> topalbumsglobalItemList;

List<Topalbumsglobal1ItemModel> topalbumsglobal1ItemList;

ChartsModel copyWith({List<TopalbumsglobalItemModel>? topalbumsglobalItemList, List<Topalbumsglobal1ItemModel>? topalbumsglobal1ItemList, }) { return ChartsModel(
topalbumsglobalItemList : topalbumsglobalItemList ?? this.topalbumsglobalItemList,
topalbumsglobal1ItemList : topalbumsglobal1ItemList ?? this.topalbumsglobal1ItemList,
); } 
@override List<Object?> get props => [topalbumsglobalItemList,topalbumsglobal1ItemList];
 }
