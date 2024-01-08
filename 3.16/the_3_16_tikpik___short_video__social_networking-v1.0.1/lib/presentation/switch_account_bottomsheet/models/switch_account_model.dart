// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'switchaccount_item_model.dart';/// This class defines the variables used in the [switch_account_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.
class SwitchAccountModel extends Equatable {SwitchAccountModel({this.switchaccountItemList = const []}) {  }

List<SwitchaccountItemModel> switchaccountItemList;

SwitchAccountModel copyWith({List<SwitchaccountItemModel>? switchaccountItemList}) { return SwitchAccountModel(
switchaccountItemList : switchaccountItemList ?? this.switchaccountItemList,
); } 
@override List<Object?> get props => [switchaccountItemList];
 }
