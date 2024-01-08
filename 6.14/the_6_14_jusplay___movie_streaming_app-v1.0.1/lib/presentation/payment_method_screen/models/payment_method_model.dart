// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'paymentmethodlist_item_model.dart';

/// This class defines the variables used in the [payment_method_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PaymentMethodModel extends Equatable {
  PaymentMethodModel({this.paymentmethodlistItemList = const []}) {}

  List<PaymentmethodlistItemModel> paymentmethodlistItemList;

  PaymentMethodModel copyWith(
      {List<PaymentmethodlistItemModel>? paymentmethodlistItemList}) {
    return PaymentMethodModel(
      paymentmethodlistItemList:
          paymentmethodlistItemList ?? this.paymentmethodlistItemList,
    );
  }

  @override
  List<Object?> get props => [paymentmethodlistItemList];
}
