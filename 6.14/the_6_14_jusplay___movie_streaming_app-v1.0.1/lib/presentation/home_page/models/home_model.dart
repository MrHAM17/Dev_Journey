// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'frame_item_model.dart';
import 'aladdin_item_model.dart';

/// This class defines the variables used in the [home_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeModel extends Equatable {
  HomeModel({
    this.frameItemList = const [],
    this.aladdinItemList = const [],
  }) {}

  List<FrameItemModel> frameItemList;

  List<AladdinItemModel> aladdinItemList;

  HomeModel copyWith({
    List<FrameItemModel>? frameItemList,
    List<AladdinItemModel>? aladdinItemList,
  }) {
    return HomeModel(
      frameItemList: frameItemList ?? this.frameItemList,
      aladdinItemList: aladdinItemList ?? this.aladdinItemList,
    );
  }

  @override
  List<Object?> get props => [frameItemList, aladdinItemList];
}
