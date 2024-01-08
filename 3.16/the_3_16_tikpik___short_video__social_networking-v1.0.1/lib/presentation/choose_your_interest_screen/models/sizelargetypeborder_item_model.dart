// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class is used in the [sizelargetypeborder_item_widget] screen.
class SizelargetypeborderItemModel extends Equatable {SizelargetypeborderItemModel({this.sizeLargeTypeBorder, this.isSelected, }) { sizeLargeTypeBorder = sizeLargeTypeBorder  ?? "Gaming";isSelected = isSelected  ?? false; }

String? sizeLargeTypeBorder;

bool? isSelected;

SizelargetypeborderItemModel copyWith({String? sizeLargeTypeBorder, bool? isSelected, }) { return SizelargetypeborderItemModel(
sizeLargeTypeBorder : sizeLargeTypeBorder ?? this.sizeLargeTypeBorder,
isSelected : isSelected ?? this.isSelected,
); } 
@override List<Object?> get props => [sizeLargeTypeBorder,isSelected];
 }
