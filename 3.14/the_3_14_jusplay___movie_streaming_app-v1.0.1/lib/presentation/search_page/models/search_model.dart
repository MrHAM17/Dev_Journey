// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'frame3_item_model.dart';
import '../../../core/app_export.dart';
import 'frame5_item_model.dart';
import 'frame6_item_model.dart';

/// This class defines the variables used in the [search_page],
/// and is typically used to hold data that is passed between different parts of the application.
class SearchModel extends Equatable {
  SearchModel({
    this.frame3ItemList = const [],
    this.frame5ItemList = const [],
    this.frame6ItemList = const [],
  }) {}

  List<Frame3ItemModel> frame3ItemList;

  List<Frame5ItemModel> frame5ItemList;

  List<Frame6ItemModel> frame6ItemList;

  SearchModel copyWith({
    List<Frame3ItemModel>? frame3ItemList,
    List<Frame5ItemModel>? frame5ItemList,
    List<Frame6ItemModel>? frame6ItemList,
  }) {
    return SearchModel(
      frame3ItemList: frame3ItemList ?? this.frame3ItemList,
      frame5ItemList: frame5ItemList ?? this.frame5ItemList,
      frame6ItemList: frame6ItemList ?? this.frame6ItemList,
    );
  }

  @override
  List<Object?> get props => [frame3ItemList, frame5ItemList, frame6ItemList];
}
