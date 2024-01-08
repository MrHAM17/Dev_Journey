// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'trendingnow2_item_model.dart';/// This class defines the variables used in the [trending_now_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class TrendingNowModel extends Equatable {TrendingNowModel({this.trendingnow2ItemList = const []}) {  }

List<Trendingnow2ItemModel> trendingnow2ItemList;

TrendingNowModel copyWith({List<Trendingnow2ItemModel>? trendingnow2ItemList}) { return TrendingNowModel(
trendingnow2ItemList : trendingnow2ItemList ?? this.trendingnow2ItemList,
); } 
@override List<Object?> get props => [trendingnow2ItemList];
 }
