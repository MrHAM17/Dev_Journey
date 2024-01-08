// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'choosepaymentmethod_item_model.dart';/// This class defines the variables used in the [choose_payment_method_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ChoosePaymentMethodModel extends Equatable {ChoosePaymentMethodModel({this.choosepaymentmethodItemList = const []}) {  }

List<ChoosepaymentmethodItemModel> choosepaymentmethodItemList;

ChoosePaymentMethodModel copyWith({List<ChoosepaymentmethodItemModel>? choosepaymentmethodItemList}) { return ChoosePaymentMethodModel(
choosepaymentmethodItemList : choosepaymentmethodItemList ?? this.choosepaymentmethodItemList,
); } 
@override List<Object?> get props => [choosepaymentmethodItemList];
 }
