// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class is used in the [intrestrow1_item_widget] screen.
class Intrestrow1ItemModel extends Equatable {
  Intrestrow1ItemModel({
    this.chips,
    this.isSelected,
  }) {
    chips = chips ?? "Art";
    isSelected = isSelected ?? false;
  }

  String? chips;

  bool? isSelected;

  Intrestrow1ItemModel copyWith({
    String? chips,
    bool? isSelected,
  }) {
    return Intrestrow1ItemModel(
      chips: chips ?? this.chips,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [chips, isSelected];
}
