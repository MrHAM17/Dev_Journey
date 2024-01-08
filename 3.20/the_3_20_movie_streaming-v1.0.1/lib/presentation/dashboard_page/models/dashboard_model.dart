// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'specials_item_model.dart';
import 'specials1_item_model.dart';
import 'specials2_item_model.dart';
import 'specials3_item_model.dart';
import 'specials4_item_model.dart';
import 'specials5_item_model.dart';

/// This class defines the variables used in the [dashboard_page],
/// and is typically used to hold data that is passed between different parts of the application.
class DashboardModel extends Equatable {
  DashboardModel({
    this.specialsItemList = const [],
    this.specials1ItemList = const [],
    this.specials2ItemList = const [],
    this.specials3ItemList = const [],
    this.specials4ItemList = const [],
    this.specials5ItemList = const [],
  }) {}

  List<SpecialsItemModel> specialsItemList;

  List<Specials1ItemModel> specials1ItemList;

  List<Specials2ItemModel> specials2ItemList;

  List<Specials3ItemModel> specials3ItemList;

  List<Specials4ItemModel> specials4ItemList;

  List<Specials5ItemModel> specials5ItemList;

  DashboardModel copyWith({
    List<SpecialsItemModel>? specialsItemList,
    List<Specials1ItemModel>? specials1ItemList,
    List<Specials2ItemModel>? specials2ItemList,
    List<Specials3ItemModel>? specials3ItemList,
    List<Specials4ItemModel>? specials4ItemList,
    List<Specials5ItemModel>? specials5ItemList,
  }) {
    return DashboardModel(
      specialsItemList: specialsItemList ?? this.specialsItemList,
      specials1ItemList: specials1ItemList ?? this.specials1ItemList,
      specials2ItemList: specials2ItemList ?? this.specials2ItemList,
      specials3ItemList: specials3ItemList ?? this.specials3ItemList,
      specials4ItemList: specials4ItemList ?? this.specials4ItemList,
      specials5ItemList: specials5ItemList ?? this.specials5ItemList,
    );
  }

  @override
  List<Object?> get props => [
        specialsItemList,
        specials1ItemList,
        specials2ItemList,
        specials3ItemList,
        specials4ItemList,
        specials5ItemList
      ];
}
