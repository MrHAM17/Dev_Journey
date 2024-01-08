// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'accounts_item_model.dart';

/// This class defines the variables used in the [accounts_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AccountsModel extends Equatable {
  AccountsModel({this.accountsItemList = const []}) {}

  List<AccountsItemModel> accountsItemList;

  AccountsModel copyWith({List<AccountsItemModel>? accountsItemList}) {
    return AccountsModel(
      accountsItemList: accountsItemList ?? this.accountsItemList,
    );
  }

  @override
  List<Object?> get props => [accountsItemList];
}
