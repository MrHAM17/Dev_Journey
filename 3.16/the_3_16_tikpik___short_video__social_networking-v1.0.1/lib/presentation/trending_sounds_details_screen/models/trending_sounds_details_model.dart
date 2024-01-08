// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'autolayoutvertical3_item_model.dart';/// This class defines the variables used in the [trending_sounds_details_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class TrendingSoundsDetailsModel extends Equatable {TrendingSoundsDetailsModel({this.autolayoutvertical3ItemList = const []}) {  }

List<Autolayoutvertical3ItemModel> autolayoutvertical3ItemList;

TrendingSoundsDetailsModel copyWith({List<Autolayoutvertical3ItemModel>? autolayoutvertical3ItemList}) { return TrendingSoundsDetailsModel(
autolayoutvertical3ItemList : autolayoutvertical3ItemList ?? this.autolayoutvertical3ItemList,
); } 
@override List<Object?> get props => [autolayoutvertical3ItemList];
 }
