// ignore_for_file: must_be_immutable

part of 'home_swipe_up_instructions_notifier.dart';

/// Represents the state of HomeSwipeUpInstructions in the application.
class HomeSwipeUpInstructionsState extends Equatable {
  HomeSwipeUpInstructionsState({this.homeSwipeUpInstructionsModelObj});

  HomeSwipeUpInstructionsModel? homeSwipeUpInstructionsModelObj;

  @override
  List<Object?> get props => [
        homeSwipeUpInstructionsModelObj,
      ];

  HomeSwipeUpInstructionsState copyWith(
      {HomeSwipeUpInstructionsModel? homeSwipeUpInstructionsModelObj}) {
    return HomeSwipeUpInstructionsState(
      homeSwipeUpInstructionsModelObj: homeSwipeUpInstructionsModelObj ??
          this.homeSwipeUpInstructionsModelObj,
    );
  }
}
