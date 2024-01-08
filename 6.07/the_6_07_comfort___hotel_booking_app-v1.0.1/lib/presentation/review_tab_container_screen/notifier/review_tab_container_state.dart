// ignore_for_file: must_be_immutable

part of 'review_tab_container_notifier.dart';

/// Represents the state of ReviewTabContainer in the application.
class ReviewTabContainerState extends Equatable {
  ReviewTabContainerState({this.reviewTabContainerModelObj});

  ReviewTabContainerModel? reviewTabContainerModelObj;

  @override
  List<Object?> get props => [
        reviewTabContainerModelObj,
      ];

  ReviewTabContainerState copyWith(
      {ReviewTabContainerModel? reviewTabContainerModelObj}) {
    return ReviewTabContainerState(
      reviewTabContainerModelObj:
          reviewTabContainerModelObj ?? this.reviewTabContainerModelObj,
    );
  }
}
