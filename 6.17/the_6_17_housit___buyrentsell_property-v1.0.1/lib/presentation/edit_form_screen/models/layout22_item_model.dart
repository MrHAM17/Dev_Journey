// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class is used in the [layout22_item_widget] screen.
class Layout22ItemModel extends Equatable {Layout22ItemModel({this.buttonCategory, this.isSelected, }) { buttonCategory = buttonCategory  ?? "< 4";isSelected = isSelected  ?? false; }

String? buttonCategory;

bool? isSelected;

Layout22ItemModel copyWith({String? buttonCategory, bool? isSelected, }) { return Layout22ItemModel(
buttonCategory : buttonCategory ?? this.buttonCategory,
isSelected : isSelected ?? this.isSelected,
); } 
@override List<Object?> get props => [buttonCategory,isSelected];
 }
