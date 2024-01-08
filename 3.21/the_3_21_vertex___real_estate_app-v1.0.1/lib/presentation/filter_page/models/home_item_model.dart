// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class is used in the [home_item_widget] screen.
class HomeItemModel extends Equatable {HomeItemModel({this.home, this.isSelected, }) { home = home  ?? "Home";isSelected = isSelected  ?? false; }

String? home;

bool? isSelected;

HomeItemModel copyWith({String? home, bool? isSelected, }) { return HomeItemModel(
home : home ?? this.home,
isSelected : isSelected ?? this.isSelected,
); } 
@override List<Object?> get props => [home,isSelected];
 }
