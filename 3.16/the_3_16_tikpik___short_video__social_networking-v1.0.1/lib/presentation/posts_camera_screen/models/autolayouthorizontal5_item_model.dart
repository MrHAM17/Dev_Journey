// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class is used in the [autolayouthorizontal5_item_widget] screen.
class Autolayouthorizontal5ItemModel extends Equatable {Autolayouthorizontal5ItemModel({this.m, this.isSelected, }) { m = m  ?? "3m";isSelected = isSelected  ?? false; }

String? m;

bool? isSelected;

Autolayouthorizontal5ItemModel copyWith({String? m, bool? isSelected, }) { return Autolayouthorizontal5ItemModel(
m : m ?? this.m,
isSelected : isSelected ?? this.isSelected,
); } 
@override List<Object?> get props => [m,isSelected];
 }
