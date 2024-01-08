// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class is used in the [layout17_item_widget] screen.
class Layout17ItemModel extends Equatable {Layout17ItemModel({this.buttonCategory, this.isSelected, }) { buttonCategory = buttonCategory  ?? "House";isSelected = isSelected  ?? false; }

String? buttonCategory;

bool? isSelected;

Layout17ItemModel copyWith({String? buttonCategory, bool? isSelected, }) { return Layout17ItemModel(
buttonCategory : buttonCategory ?? this.buttonCategory,
isSelected : isSelected ?? this.isSelected,
); } 
@override List<Object?> get props => [buttonCategory,isSelected];
 }
