// ignore_for_file: must_be_immutable

part of 'interests_topics_bloc.dart';

/// Represents the state of InterestsTopics in the application.
class InterestsTopicsState extends Equatable {
  InterestsTopicsState({this.interestsTopicsModelObj});

  InterestsTopicsModel? interestsTopicsModelObj;

  @override
  List<Object?> get props => [
        interestsTopicsModelObj,
      ];
  InterestsTopicsState copyWith(
      {InterestsTopicsModel? interestsTopicsModelObj}) {
    return InterestsTopicsState(
      interestsTopicsModelObj:
          interestsTopicsModelObj ?? this.interestsTopicsModelObj,
    );
  }
}
