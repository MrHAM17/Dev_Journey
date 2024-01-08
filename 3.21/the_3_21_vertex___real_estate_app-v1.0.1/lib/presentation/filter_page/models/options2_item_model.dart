// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class is used in the [options2_item_widget] screen.
class Options2ItemModel extends Equatable {Options2ItemModel({this.freeWiFi, this.isSelected, }) { freeWiFi = freeWiFi  ?? "Free WiFi";isSelected = isSelected  ?? false; }

String? freeWiFi;

bool? isSelected;

Options2ItemModel copyWith({String? freeWiFi, bool? isSelected, }) { return Options2ItemModel(
freeWiFi : freeWiFi ?? this.freeWiFi,
isSelected : isSelected ?? this.isSelected,
); } 
@override List<Object?> get props => [freeWiFi,isSelected];
 }
