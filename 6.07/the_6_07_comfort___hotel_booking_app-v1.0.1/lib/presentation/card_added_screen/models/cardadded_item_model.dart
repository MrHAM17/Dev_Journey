import '../../../core/app_export.dart';/// This class is used in the [cardadded_item_widget] screen.
class CardaddedItemModel {CardaddedItemModel({this.paypal, this.paypal1, this.id, }) { paypal = paypal  ?? ImageConstant.imgFrameLightBlue600;paypal1 = paypal1  ?? "Paypal";id = id  ?? ""; }

String? paypal;

String? paypal1;

String? id;

 }
