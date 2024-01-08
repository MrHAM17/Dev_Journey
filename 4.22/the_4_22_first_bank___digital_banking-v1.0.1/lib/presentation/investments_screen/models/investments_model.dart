import '../../../core/app_export.dart';
import 'investmentsummary_item_model.dart';
import 'viewhierarchy_item_model.dart';

/// This class defines the variables used in the [investments_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class InvestmentsModel {
  Rx<List<InvestmentsummaryItemModel>> investmentsummaryItemList = Rx([
    InvestmentsummaryItemModel(
        moneyBagIcon: ImageConstant.imgMoneyBagOfDollars.obs,
        totalInvestedAmountText: "Total Invested Amount".obs,
        investmentAmountText: "150,000".obs),
    InvestmentsummaryItemModel(
        moneyBagIcon: ImageConstant.imgPieChart1.obs,
        totalInvestedAmountText: "Number of Investments".obs,
        investmentAmountText: "1,250".obs),
    InvestmentsummaryItemModel(
        moneyBagIcon: ImageConstant.imgRepeat1.obs,
        totalInvestedAmountText: "Rate of Return".obs,
        investmentAmountText: "+5.80%".obs)
  ]);

  Rx<List<ViewhierarchyItemModel>> viewhierarchyItemList = Rx([
    ViewhierarchyItemModel(
        closeImage: ImageConstant.imgClose.obs,
        appleStoreText: "Apple Store".obs,
        ecommerceText: "E-commerce, Marketplace".obs,
        sixteenText: "+16%".obs),
    ViewhierarchyItemModel(
        closeImage: ImageConstant.imgFloatingIcon.obs,
        appleStoreText: "Tesla Motors".obs,
        ecommerceText: "Electric Vehicles".obs,
        sixteenText: "+25%".obs),
    ViewhierarchyItemModel(
        appleStoreText: "Samsung Mobile".obs,
        ecommerceText: "E-commerce, Marketplace".obs,
        sixteenText: "-4%".obs)
  ]);
}
