// ignore_for_file: must_be_immutable

part of 'walkthrough_three_notifier.dart';

/// Represents the state of WalkthroughThree in the application.
class WalkthroughThreeState extends Equatable {
  WalkthroughThreeState({this.walkthroughThreeModelObj});

  WalkthroughThreeModel? walkthroughThreeModelObj;

  @override
  List<Object?> get props => [
        walkthroughThreeModelObj,
      ];

  WalkthroughThreeState copyWith(
      {WalkthroughThreeModel? walkthroughThreeModelObj}) {
    return WalkthroughThreeState(
      walkthroughThreeModelObj:
          walkthroughThreeModelObj ?? this.walkthroughThreeModelObj,
    );
  }
}
