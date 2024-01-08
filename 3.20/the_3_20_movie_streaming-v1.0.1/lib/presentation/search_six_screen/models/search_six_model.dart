// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'movies7_item_model.dart';
import 'movies8_item_model.dart';
import 'movies9_item_model.dart';

/// This class defines the variables used in the [search_six_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SearchSixModel extends Equatable {
  SearchSixModel({
    this.movies7ItemList = const [],
    this.movies8ItemList = const [],
    this.movies9ItemList = const [],
  }) {}

  List<Movies7ItemModel> movies7ItemList;

  List<Movies8ItemModel> movies8ItemList;

  List<Movies9ItemModel> movies9ItemList;

  SearchSixModel copyWith({
    List<Movies7ItemModel>? movies7ItemList,
    List<Movies8ItemModel>? movies8ItemList,
    List<Movies9ItemModel>? movies9ItemList,
  }) {
    return SearchSixModel(
      movies7ItemList: movies7ItemList ?? this.movies7ItemList,
      movies8ItemList: movies8ItemList ?? this.movies8ItemList,
      movies9ItemList: movies9ItemList ?? this.movies9ItemList,
    );
  }

  @override
  List<Object?> get props =>
      [movies7ItemList, movies8ItemList, movies9ItemList];
}
