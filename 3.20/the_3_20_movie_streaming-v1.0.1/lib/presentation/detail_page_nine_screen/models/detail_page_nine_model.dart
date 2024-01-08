// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'framefiftythree_item_model.dart';
import '../../../core/app_export.dart';
import 'movies1_item_model.dart';

/// This class defines the variables used in the [detail_page_nine_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class DetailPageNineModel extends Equatable {
  DetailPageNineModel({
    this.framefiftythreeItemList = const [],
    this.movies1ItemList = const [],
  }) {}

  List<FramefiftythreeItemModel> framefiftythreeItemList;

  List<Movies1ItemModel> movies1ItemList;

  DetailPageNineModel copyWith({
    List<FramefiftythreeItemModel>? framefiftythreeItemList,
    List<Movies1ItemModel>? movies1ItemList,
  }) {
    return DetailPageNineModel(
      framefiftythreeItemList:
          framefiftythreeItemList ?? this.framefiftythreeItemList,
      movies1ItemList: movies1ItemList ?? this.movies1ItemList,
    );
  }

  @override
  List<Object?> get props => [framefiftythreeItemList, movies1ItemList];
}
