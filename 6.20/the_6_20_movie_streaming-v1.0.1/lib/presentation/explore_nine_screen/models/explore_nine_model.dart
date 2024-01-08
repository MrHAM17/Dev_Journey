// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'specials8_item_model.dart';
import 'explorenine_item_model.dart';

/// This class defines the variables used in the [explore_nine_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ExploreNineModel extends Equatable {
  ExploreNineModel({
    this.specials8ItemList = const [],
    this.explorenineItemList = const [],
  }) {}

  List<Specials8ItemModel> specials8ItemList;

  List<ExplorenineItemModel> explorenineItemList;

  ExploreNineModel copyWith({
    List<Specials8ItemModel>? specials8ItemList,
    List<ExplorenineItemModel>? explorenineItemList,
  }) {
    return ExploreNineModel(
      specials8ItemList: specials8ItemList ?? this.specials8ItemList,
      explorenineItemList: explorenineItemList ?? this.explorenineItemList,
    );
  }

  @override
  List<Object?> get props => [specials8ItemList, explorenineItemList];
}
