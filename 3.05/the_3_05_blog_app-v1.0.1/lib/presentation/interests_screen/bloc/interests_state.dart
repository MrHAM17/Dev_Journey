// ignore_for_file: must_be_immutable

part of 'interests_bloc.dart';

/// Represents the state of Interests in the application.
class InterestsState extends Equatable {
  InterestsState({this.interestsModelObj});

  InterestsModel? interestsModelObj;

  @override
  List<Object?> get props => [
        interestsModelObj,
      ];
  InterestsState copyWith({InterestsModel? interestsModelObj}) {
    return InterestsState(
      interestsModelObj: interestsModelObj ?? this.interestsModelObj,
    );
  }
}
