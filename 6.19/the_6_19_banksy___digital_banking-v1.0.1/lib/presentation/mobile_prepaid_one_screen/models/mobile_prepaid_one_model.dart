// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'profilelist1_item_model.dart';
import 'fortytwo_item_model.dart';
import 'thirtyseven_item_model.dart';

/// This class defines the variables used in the [mobile_prepaid_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MobilePrepaidOneModel extends Equatable {
  MobilePrepaidOneModel({
    this.profilelist1ItemList = const [],
    this.fortytwoItemList = const [],
    this.thirtysevenItemList = const [],
  }) {}

  List<Profilelist1ItemModel> profilelist1ItemList;

  List<FortytwoItemModel> fortytwoItemList;

  List<ThirtysevenItemModel> thirtysevenItemList;

  MobilePrepaidOneModel copyWith({
    List<Profilelist1ItemModel>? profilelist1ItemList,
    List<FortytwoItemModel>? fortytwoItemList,
    List<ThirtysevenItemModel>? thirtysevenItemList,
  }) {
    return MobilePrepaidOneModel(
      profilelist1ItemList: profilelist1ItemList ?? this.profilelist1ItemList,
      fortytwoItemList: fortytwoItemList ?? this.fortytwoItemList,
      thirtysevenItemList: thirtysevenItemList ?? this.thirtysevenItemList,
    );
  }

  @override
  List<Object?> get props =>
      [profilelist1ItemList, fortytwoItemList, thirtysevenItemList];
}
