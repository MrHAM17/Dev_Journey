// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'framethirtysix_item_model.dart';
import 'stories_item_model.dart';

/// This class defines the variables used in the [home_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeModel extends Equatable {
  HomeModel({
    this.framethirtysixItemList = const [],
    this.storiesItemList = const [],
  }) {}

  List<FramethirtysixItemModel> framethirtysixItemList;

  List<StoriesItemModel> storiesItemList;

  HomeModel copyWith({
    List<FramethirtysixItemModel>? framethirtysixItemList,
    List<StoriesItemModel>? storiesItemList,
  }) {
    return HomeModel(
      framethirtysixItemList:
          framethirtysixItemList ?? this.framethirtysixItemList,
      storiesItemList: storiesItemList ?? this.storiesItemList,
    );
  }

  @override
  List<Object?> get props => [framethirtysixItemList, storiesItemList];
}
