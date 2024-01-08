// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class is used in the [layout15_item_widget] screen.
class Layout15ItemModel extends Equatable {Layout15ItemModel({this.buttonCategory, this.isSelected, }) { buttonCategory = buttonCategory  ?? "Rent";isSelected = isSelected  ?? false; }

String? buttonCategory;

bool? isSelected;

Layout15ItemModel copyWith({String? buttonCategory, bool? isSelected, }) { return Layout15ItemModel(
buttonCategory : buttonCategory ?? this.buttonCategory,
isSelected : isSelected ?? this.isSelected,
); } 
@override List<Object?> get props => [buttonCategory,isSelected];
 }
