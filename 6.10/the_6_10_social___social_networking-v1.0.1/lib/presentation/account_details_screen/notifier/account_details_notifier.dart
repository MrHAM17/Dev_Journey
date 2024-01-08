import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/fortysix_item_model.dart';
import '../models/widget_item_model.dart';
import 'package:the_6_10_social___social_networking/presentation/account_details_screen/models/account_details_model.dart';
part 'account_details_state.dart';

final accountDetailsNotifier =
    StateNotifierProvider<AccountDetailsNotifier, AccountDetailsState>(
        (ref) => AccountDetailsNotifier(AccountDetailsState(
                accountDetailsModelObj: AccountDetailsModel(fortysixItemList: [
              FortysixItemModel(fortySix: ImageConstant.img46),
              FortysixItemModel(fortySix: ImageConstant.img47),
              FortysixItemModel(fortySix: ImageConstant.img48)
            ], widgetItemList: [
              WidgetItemModel(image: ImageConstant.imgEllipse15),
              WidgetItemModel(image: ImageConstant.imgEllipse22),
              WidgetItemModel(image: ImageConstant.imgEllipse24),
              WidgetItemModel(image: ImageConstant.imgEllipse26),
              WidgetItemModel(image: ImageConstant.imgEllipse28)
            ]))));

/// A notifier that manages the state of a AccountDetails according to the event that is dispatched to it.
class AccountDetailsNotifier extends StateNotifier<AccountDetailsState> {
  AccountDetailsNotifier(AccountDetailsState state) : super(state);
}
