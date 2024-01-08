import '../../../core/app_export.dart';

/// This class is used in the [userprofile1_item_widget] screen.
class Userprofile1ItemModel {
  Userprofile1ItemModel({
    this.userImage,
    this.personalLoansText,
    this.loanAmountText,
    this.id,
  }) {
    userImage = userImage ?? Rx(ImageConstant.imgUser32);
    personalLoansText = personalLoansText ?? Rx("Personal Loans");
    loanAmountText = loanAmountText ?? Rx("50,000");
    id = id ?? Rx("");
  }

  Rx<String>? userImage;

  Rx<String>? personalLoansText;

  Rx<String>? loanAmountText;

  Rx<String>? id;
}
