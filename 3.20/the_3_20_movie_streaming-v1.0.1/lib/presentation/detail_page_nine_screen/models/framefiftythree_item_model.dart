// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class is used in the [framefiftythree_item_widget] screen.
class FramefiftythreeItemModel extends Equatable {
  FramefiftythreeItemModel({
    this.tags,
    this.isSelected,
  }) {
    tags = tags ?? "Action";
    isSelected = isSelected ?? false;
  }

  String? tags;

  bool? isSelected;

  FramefiftythreeItemModel copyWith({
    String? tags,
    bool? isSelected,
  }) {
    return FramefiftythreeItemModel(
      tags: tags ?? this.tags,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [tags, isSelected];
}
