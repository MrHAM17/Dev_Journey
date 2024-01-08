import '../../../core/app_export.dart';

/// This class is used in the [paymentmethodlist_item_widget] screen.
class PaymentmethodlistItemModel {
  PaymentmethodlistItemModel({
    this.googlePay,
    this.googlePay1,
    this.id,
  }) {
    googlePay = googlePay ?? ImageConstant.imgGoogle3;
    googlePay1 = googlePay1 ?? "Google Pay";
    id = id ?? "";
  }

  String? googlePay;

  String? googlePay1;

  String? id;
}
