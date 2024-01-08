import '../../../core/app_export.dart';/// This class is used in the [choosepaymentmethod_item_widget] screen.
class ChoosepaymentmethodItemModel {ChoosepaymentmethodItemModel({this.paypal, this.paypal1, this.id, }) { paypal = paypal  ?? ImageConstant.imgFrameLightBlue600;paypal1 = paypal1  ?? "Paypal";id = id  ?? ""; }

String? paypal;

String? paypal1;

String? id;

 }
