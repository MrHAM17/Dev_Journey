// ignore_for_file: must_be_immutable

part of 'walkthrough_one_notifier.dart';

/// Represents the state of WalkthroughOne in the application.
class WalkthroughOneState extends Equatable {
  WalkthroughOneState({this.walkthroughOneModelObj});

  WalkthroughOneModel? walkthroughOneModelObj;

  @override
  List<Object?> get props => [
        walkthroughOneModelObj,
      ];

  WalkthroughOneState copyWith({WalkthroughOneModel? walkthroughOneModelObj}) {
    return WalkthroughOneState(
      walkthroughOneModelObj:
          walkthroughOneModelObj ?? this.walkthroughOneModelObj,
    );
  }
}
