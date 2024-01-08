// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'data_item_model.dart';/// This class defines the variables used in the [top_locations_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class TopLocationsModel extends Equatable {TopLocationsModel({this.dataItemList = const []}) {  }

List<DataItemModel> dataItemList;

TopLocationsModel copyWith({List<DataItemModel>? dataItemList}) { return TopLocationsModel(
dataItemList : dataItemList ?? this.dataItemList,
); } 
@override List<Object?> get props => [dataItemList];
 }
