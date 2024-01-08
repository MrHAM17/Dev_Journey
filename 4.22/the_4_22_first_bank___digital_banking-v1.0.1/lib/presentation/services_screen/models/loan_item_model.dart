import '../../../core/app_export.dart';

/// This class is used in the [loan_item_widget] screen.
class LoanItemModel {
  LoanItemModel({
    this.loanImage,
    this.loanTitle,
    this.loanDescription,
    this.viewDetailsText,
    this.id,
  }) {
    loanImage = loanImage ?? Rx(ImageConstant.imgLoan1);
    loanTitle = loanTitle ?? Rx("Business loans");
    loanDescription = loanDescription ?? Rx("It is a long established ");
    viewDetailsText = viewDetailsText ?? Rx("View Details");
    id = id ?? Rx("");
  }

  Rx<String>? loanImage;

  Rx<String>? loanTitle;

  Rx<String>? loanDescription;

  Rx<String>? viewDetailsText;

  Rx<String>? id;
}
