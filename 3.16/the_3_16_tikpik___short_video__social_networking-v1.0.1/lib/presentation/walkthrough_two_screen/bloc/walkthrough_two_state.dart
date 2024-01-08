// ignore_for_file: must_be_immutable

part of 'walkthrough_two_bloc.dart';

/// Represents the state of WalkthroughTwo in the application.
class WalkthroughTwoState extends Equatable {
  WalkthroughTwoState({this.walkthroughTwoModelObj});

  WalkthroughTwoModel? walkthroughTwoModelObj;

  @override
  List<Object?> get props => [
        walkthroughTwoModelObj,
      ];
  WalkthroughTwoState copyWith({WalkthroughTwoModel? walkthroughTwoModelObj}) {
    return WalkthroughTwoState(
      walkthroughTwoModelObj:
          walkthroughTwoModelObj ?? this.walkthroughTwoModelObj,
    );
  }
}
