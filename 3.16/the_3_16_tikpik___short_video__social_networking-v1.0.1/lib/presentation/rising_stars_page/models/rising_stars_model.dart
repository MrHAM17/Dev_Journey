// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'risingstars_item_model.dart';/// This class defines the variables used in the [rising_stars_page],
/// and is typically used to hold data that is passed between different parts of the application.
class RisingStarsModel extends Equatable {RisingStarsModel({this.risingstarsItemList = const []}) {  }

List<RisingstarsItemModel> risingstarsItemList;

RisingStarsModel copyWith({List<RisingstarsItemModel>? risingstarsItemList}) { return RisingStarsModel(
risingstarsItemList : risingstarsItemList ?? this.risingstarsItemList,
); } 
@override List<Object?> get props => [risingstarsItemList];
 }
