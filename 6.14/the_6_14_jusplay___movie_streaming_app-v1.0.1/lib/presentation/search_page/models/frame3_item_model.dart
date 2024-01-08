// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class is used in the [frame3_item_widget] screen.
class Frame3ItemModel extends Equatable {
  Frame3ItemModel({
    this.tabs,
    this.isSelected,
  }) {
    tabs = tabs ?? "Marvel";
    isSelected = isSelected ?? false;
  }

  String? tabs;

  bool? isSelected;

  Frame3ItemModel copyWith({
    String? tabs,
    bool? isSelected,
  }) {
    return Frame3ItemModel(
      tabs: tabs ?? this.tabs,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [tabs, isSelected];
}
