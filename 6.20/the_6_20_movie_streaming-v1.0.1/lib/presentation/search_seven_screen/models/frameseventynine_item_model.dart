// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class is used in the [frameseventynine_item_widget] screen.
class FrameseventynineItemModel extends Equatable {
  FrameseventynineItemModel({
    this.tags,
    this.isSelected,
  }) {
    tags = tags ?? "Mark Love";
    isSelected = isSelected ?? false;
  }

  String? tags;

  bool? isSelected;

  FrameseventynineItemModel copyWith({
    String? tags,
    bool? isSelected,
  }) {
    return FrameseventynineItemModel(
      tags: tags ?? this.tags,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [tags, isSelected];
}
