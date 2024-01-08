// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class is used in the [widget_item_widget] screen.
class WidgetItemModel extends Equatable {WidgetItemModel({this.buttonCategory, this.isSelected, }) { buttonCategory = buttonCategory  ?? "Rent";isSelected = isSelected  ?? false; }

String? buttonCategory;

bool? isSelected;

WidgetItemModel copyWith({String? buttonCategory, bool? isSelected, }) { return WidgetItemModel(
buttonCategory : buttonCategory ?? this.buttonCategory,
isSelected : isSelected ?? this.isSelected,
); } 
@override List<Object?> get props => [buttonCategory,isSelected];
 }
