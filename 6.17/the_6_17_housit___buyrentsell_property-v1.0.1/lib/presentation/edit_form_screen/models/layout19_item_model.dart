// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class is used in the [layout19_item_widget] screen.
class Layout19ItemModel extends Equatable {Layout19ItemModel({this.buttonCategory, this.isSelected, }) { buttonCategory = buttonCategory  ?? "Monthly";isSelected = isSelected  ?? false; }

String? buttonCategory;

bool? isSelected;

Layout19ItemModel copyWith({String? buttonCategory, bool? isSelected, }) { return Layout19ItemModel(
buttonCategory : buttonCategory ?? this.buttonCategory,
isSelected : isSelected ?? this.isSelected,
); } 
@override List<Object?> get props => [buttonCategory,isSelected];
 }
