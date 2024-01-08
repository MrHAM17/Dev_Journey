import '../../../core/app_export.dart';/// This class is used in the [refundmethod_item_widget] screen.
class RefundmethodItemModel {RefundmethodItemModel({this.paypal, this.paypal1, this.paypal2, this.id, }) { paypal = paypal  ?? ImageConstant.imgFrameLightBlue600;paypal1 = paypal1  ?? "Paypal";paypal2 = paypal2  ?? ImageConstant.imgContrastPrimary20x20;id = id  ?? ""; }

String? paypal;

String? paypal1;

String? paypal2;

String? id;

 }
