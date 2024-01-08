import '../../../core/app_export.dart';
import 'paybill_item_model.dart';

class PayBillModel {
  List<PaybillItemModel> paybillItemList = [
    PaybillItemModel(
        electricityBill: ImageConstant.imgUserYellowA400,
        electricityBill1: "Electricity\nBill",
        card: "Pay bill of this month"),
    PaybillItemModel(
        electricityBill: ImageConstant.imgVideoCamera,
        electricityBill1: "Water\nBill",
        card: "Pay bill of this month"),
    PaybillItemModel(
        electricityBill: ImageConstant.imgForward,
        electricityBill1: "Network\nBill",
        card: "Pay bill of this month")
  ];
}
