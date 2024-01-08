// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class is used in the [widget2_item_widget] screen.
class Widget2ItemModel extends Equatable {Widget2ItemModel({this.buttonCategory, this.isSelected, }) { buttonCategory = buttonCategory  ?? "Home theatre";isSelected = isSelected  ?? false; }

String? buttonCategory;

bool? isSelected;

Widget2ItemModel copyWith({String? buttonCategory, bool? isSelected, }) { return Widget2ItemModel(
buttonCategory : buttonCategory ?? this.buttonCategory,
isSelected : isSelected ?? this.isSelected,
); } 
@override List<Object?> get props => [buttonCategory,isSelected];
 }
