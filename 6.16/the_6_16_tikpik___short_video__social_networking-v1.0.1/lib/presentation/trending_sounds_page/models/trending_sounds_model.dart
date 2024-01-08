// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'autolayouthorizontal1_item_model.dart';import 'autolayouthorizontal2_item_model.dart';/// This class defines the variables used in the [trending_sounds_page],
/// and is typically used to hold data that is passed between different parts of the application.
class TrendingSoundsModel extends Equatable {TrendingSoundsModel({this.autolayouthorizontal1ItemList = const [], this.autolayouthorizontal2ItemList = const [], }) {  }

List<Autolayouthorizontal1ItemModel> autolayouthorizontal1ItemList;

List<Autolayouthorizontal2ItemModel> autolayouthorizontal2ItemList;

TrendingSoundsModel copyWith({List<Autolayouthorizontal1ItemModel>? autolayouthorizontal1ItemList, List<Autolayouthorizontal2ItemModel>? autolayouthorizontal2ItemList, }) { return TrendingSoundsModel(
autolayouthorizontal1ItemList : autolayouthorizontal1ItemList ?? this.autolayouthorizontal1ItemList,
autolayouthorizontal2ItemList : autolayouthorizontal2ItemList ?? this.autolayouthorizontal2ItemList,
); } 
@override List<Object?> get props => [autolayouthorizontal1ItemList,autolayouthorizontal2ItemList];
 }
