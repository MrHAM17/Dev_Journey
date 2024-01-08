// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'specials7_item_model.dart';
import 'exploreeight_item_model.dart';

/// This class defines the variables used in the [explore_eight_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ExploreEightModel extends Equatable {
  ExploreEightModel({
    this.specials7ItemList = const [],
    this.exploreeightItemList = const [],
  }) {}

  List<Specials7ItemModel> specials7ItemList;

  List<ExploreeightItemModel> exploreeightItemList;

  ExploreEightModel copyWith({
    List<Specials7ItemModel>? specials7ItemList,
    List<ExploreeightItemModel>? exploreeightItemList,
  }) {
    return ExploreEightModel(
      specials7ItemList: specials7ItemList ?? this.specials7ItemList,
      exploreeightItemList: exploreeightItemList ?? this.exploreeightItemList,
    );
  }

  @override
  List<Object?> get props => [specials7ItemList, exploreeightItemList];
}
