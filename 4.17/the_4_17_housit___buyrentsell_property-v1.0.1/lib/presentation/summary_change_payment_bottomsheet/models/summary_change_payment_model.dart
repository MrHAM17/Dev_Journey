import '../../../core/app_export.dart';import 'layout1_item_model.dart';/// This class defines the variables used in the [summary_change_payment_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.
class SummaryChangePaymentModel {Rx<List<Layout1ItemModel>> layout1ItemList = Rx([Layout1ItemModel(checkmark:ImageConstant.imgCheckmark.obs,text: "•••••••• 1222".obs,balance: "Balance".obs,price: " 54,200".obs,balance1:ImageConstant.imgSettings.obs),Layout1ItemModel(checkmark:ImageConstant.imgCheckmark.obs,text: "•••••••• 1222".obs,balance: "Balance".obs,price: " 31,250".obs,balance1:ImageConstant.imgUser.obs),Layout1ItemModel(checkmark:ImageConstant.imgCheckmarkWhiteA700.obs,text: "••••••an@\nemail.com".obs,balance: "Balance".obs,price: " 12,290".obs,balance1:ImageConstant.imgTelevisionWhiteA70020x20.obs)]);

 }
