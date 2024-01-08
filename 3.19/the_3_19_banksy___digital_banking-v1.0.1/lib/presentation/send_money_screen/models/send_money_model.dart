// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'profilelist_item_model.dart';
import 'nineteen_item_model.dart';
import 'twentytwo_item_model.dart';

/// This class defines the variables used in the [send_money_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SendMoneyModel extends Equatable {
  SendMoneyModel({
    this.profilelistItemList = const [],
    this.nineteenItemList = const [],
    this.twentytwoItemList = const [],
  }) {}

  List<ProfilelistItemModel> profilelistItemList;

  List<NineteenItemModel> nineteenItemList;

  List<TwentytwoItemModel> twentytwoItemList;

  SendMoneyModel copyWith({
    List<ProfilelistItemModel>? profilelistItemList,
    List<NineteenItemModel>? nineteenItemList,
    List<TwentytwoItemModel>? twentytwoItemList,
  }) {
    return SendMoneyModel(
      profilelistItemList: profilelistItemList ?? this.profilelistItemList,
      nineteenItemList: nineteenItemList ?? this.nineteenItemList,
      twentytwoItemList: twentytwoItemList ?? this.twentytwoItemList,
    );
  }

  @override
  List<Object?> get props =>
      [profilelistItemList, nineteenItemList, twentytwoItemList];
}
