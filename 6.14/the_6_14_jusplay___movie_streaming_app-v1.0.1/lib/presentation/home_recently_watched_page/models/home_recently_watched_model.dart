// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'widget1_item_model.dart';
import '../../../core/app_export.dart';
import 'frame1_item_model.dart';
import 'frame2_item_model.dart';

/// This class defines the variables used in the [home_recently_watched_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeRecentlyWatchedModel extends Equatable {
  HomeRecentlyWatchedModel({
    this.widget1ItemList = const [],
    this.frame1ItemList = const [],
    this.frame2ItemList = const [],
  }) {}

  List<Widget1ItemModel> widget1ItemList;

  List<Frame1ItemModel> frame1ItemList;

  List<Frame2ItemModel> frame2ItemList;

  HomeRecentlyWatchedModel copyWith({
    List<Widget1ItemModel>? widget1ItemList,
    List<Frame1ItemModel>? frame1ItemList,
    List<Frame2ItemModel>? frame2ItemList,
  }) {
    return HomeRecentlyWatchedModel(
      widget1ItemList: widget1ItemList ?? this.widget1ItemList,
      frame1ItemList: frame1ItemList ?? this.frame1ItemList,
      frame2ItemList: frame2ItemList ?? this.frame2ItemList,
    );
  }

  @override
  List<Object?> get props => [widget1ItemList, frame1ItemList, frame2ItemList];
}
