import '../../../core/app_export.dart';
import 'paymentmethodlist_item_model.dart';

class PaymentMethodModel {
  List<PaymentmethodlistItemModel> paymentmethodlistItemList = [
    PaymentmethodlistItemModel(
        googlePay: ImageConstant.imgGoogle3, googlePay1: "Google Pay"),
    PaymentmethodlistItemModel(
        googlePay: ImageConstant.imgApple, googlePay1: "Apple Pay"),
    PaymentmethodlistItemModel(
        googlePay: ImageConstant.imgCheckmark, googlePay1: "Other")
  ];
}
