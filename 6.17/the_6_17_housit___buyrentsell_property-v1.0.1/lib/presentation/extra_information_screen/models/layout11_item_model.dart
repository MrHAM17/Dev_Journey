// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class is used in the [layout11_item_widget] screen.
class Layout11ItemModel extends Equatable {Layout11ItemModel({this.buttonCategory, this.isSelected, }) { buttonCategory = buttonCategory  ?? "Parking Lot";isSelected = isSelected  ?? false; }

String? buttonCategory;

bool? isSelected;

Layout11ItemModel copyWith({String? buttonCategory, bool? isSelected, }) { return Layout11ItemModel(
buttonCategory : buttonCategory ?? this.buttonCategory,
isSelected : isSelected ?? this.isSelected,
); } 
@override List<Object?> get props => [buttonCategory,isSelected];
 }
