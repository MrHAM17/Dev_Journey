// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'autolayoutvertical4_item_model.dart';/// This class defines the variables used in the [trending_hashtag_details_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class TrendingHashtagDetailsModel extends Equatable {TrendingHashtagDetailsModel({this.autolayoutvertical4ItemList = const []}) {  }

List<Autolayoutvertical4ItemModel> autolayoutvertical4ItemList;

TrendingHashtagDetailsModel copyWith({List<Autolayoutvertical4ItemModel>? autolayoutvertical4ItemList}) { return TrendingHashtagDetailsModel(
autolayoutvertical4ItemList : autolayoutvertical4ItemList ?? this.autolayoutvertical4ItemList,
); } 
@override List<Object?> get props => [autolayoutvertical4ItemList];
 }
