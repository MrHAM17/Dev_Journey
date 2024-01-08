// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'preferable_item_model.dart';/// This class defines the variables used in the [preferable_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PreferableModel extends Equatable {PreferableModel({this.preferableItemList = const []}) {  }

List<PreferableItemModel> preferableItemList;

PreferableModel copyWith({List<PreferableItemModel>? preferableItemList}) { return PreferableModel(
preferableItemList : preferableItemList ?? this.preferableItemList,
); } 
@override List<Object?> get props => [preferableItemList];
 }
