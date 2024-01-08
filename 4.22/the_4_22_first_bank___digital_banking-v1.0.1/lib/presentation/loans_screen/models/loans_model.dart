import '../../../core/app_export.dart';
import 'userprofile1_item_model.dart';

/// This class defines the variables used in the [loans_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class LoansModel {
  Rx<List<Userprofile1ItemModel>> userprofile1ItemList = Rx([
    Userprofile1ItemModel(
        userImage: ImageConstant.imgUser32.obs,
        personalLoansText: "Personal Loans".obs,
        loanAmountText: "50,000".obs),
    Userprofile1ItemModel(
        userImage: ImageConstant.imgBriefcase1.obs,
        personalLoansText: "Corporate Loans".obs,
        loanAmountText: "100,000".obs),
    Userprofile1ItemModel(
        userImage: ImageConstant.imgGraph1.obs,
        personalLoansText: "Business Loans".obs,
        loanAmountText: "500,000".obs),
    Userprofile1ItemModel(
        userImage: ImageConstant.imgSupport1.obs,
        personalLoansText: "Custom Loans".obs,
        loanAmountText: "Choose Money".obs)
  ]);
}
