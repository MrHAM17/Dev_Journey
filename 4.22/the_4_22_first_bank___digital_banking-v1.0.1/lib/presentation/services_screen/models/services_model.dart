import '../../../core/app_export.dart';
import 'userprofile2_item_model.dart';
import 'loan_item_model.dart';

/// This class defines the variables used in the [services_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ServicesModel {
  Rx<List<Userprofile2ItemModel>> userprofile2ItemList = Rx([
    Userprofile2ItemModel(
        lifeInsuranceIcon: ImageConstant.imgLifeInsuranceFilled.obs,
        lifeInsuranceText: "Life Insurance".obs,
        unlimitedProtectionText: "Unlimited protection".obs),
    Userprofile2ItemModel(
        lifeInsuranceIcon: ImageConstant.imgBag1.obs,
        lifeInsuranceText: "Shopping".obs,
        unlimitedProtectionText: "Buy. Think. Grow".obs),
    Userprofile2ItemModel(
        lifeInsuranceIcon: ImageConstant.imgShield1.obs,
        lifeInsuranceText: "Safety".obs,
        unlimitedProtectionText: "We are your allies".obs)
  ]);

  Rx<List<LoanItemModel>> loanItemList = Rx([
    LoanItemModel(
        loanImage: ImageConstant.imgLoan1.obs,
        loanTitle: "Business loans".obs,
        loanDescription: "It is a long established ".obs,
        viewDetailsText: "View Details".obs),
    LoanItemModel(
        loanImage: ImageConstant.imgBriefcase1.obs,
        loanTitle: "Checking accounts".obs,
        loanDescription: "It is a long established ".obs,
        viewDetailsText: "View Details".obs),
    LoanItemModel(
        loanImage: ImageConstant.imgGroup.obs,
        loanTitle: "Savings accounts".obs,
        loanDescription: "It is a long established ".obs,
        viewDetailsText: "View Details".obs),
    LoanItemModel(
        loanImage: ImageConstant.imgUser32.obs,
        loanTitle: "Debit and credit cards".obs,
        loanDescription: "It is a long established ".obs,
        viewDetailsText: "View Details".obs),
    LoanItemModel(
        loanImage: ImageConstant.imgShield1.obs,
        loanTitle: "Life Insurance".obs,
        loanDescription: "It is a long established ".obs,
        viewDetailsText: "View Details".obs),
    LoanItemModel(
        loanImage: ImageConstant.imgLoan1.obs,
        loanTitle: "Business loans".obs,
        loanDescription: "It is a long established ".obs,
        viewDetailsText: "View Details".obs)
  ]);
}
