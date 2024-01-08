// ignore_for_file: must_be_immutable

part of 'review_fill_notifier.dart';

/// Represents the state of ReviewFill in the application.
class ReviewFillState extends Equatable {
  ReviewFillState({
    this.formDateFillController,
    this.formDateFillController1,
    this.televisionController,
    this.reviewFillModelObj,
  });

  TextEditingController? formDateFillController;

  TextEditingController? formDateFillController1;

  TextEditingController? televisionController;

  ReviewFillModel? reviewFillModelObj;

  @override
  List<Object?> get props => [
        formDateFillController,
        formDateFillController1,
        televisionController,
        reviewFillModelObj,
      ];

  ReviewFillState copyWith({
    TextEditingController? formDateFillController,
    TextEditingController? formDateFillController1,
    TextEditingController? televisionController,
    ReviewFillModel? reviewFillModelObj,
  }) {
    return ReviewFillState(
      formDateFillController:
          formDateFillController ?? this.formDateFillController,
      formDateFillController1:
          formDateFillController1 ?? this.formDateFillController1,
      televisionController: televisionController ?? this.televisionController,
      reviewFillModelObj: reviewFillModelObj ?? this.reviewFillModelObj,
    );
  }
}
