// ignore_for_file: must_be_immutable

part of 'sound_used_bloc.dart';

/// Represents the state of SoundUsed in the application.
class SoundUsedState extends Equatable {
  SoundUsedState({this.soundUsedModelObj});

  SoundUsedModel? soundUsedModelObj;

  @override
  List<Object?> get props => [
        soundUsedModelObj,
      ];
  SoundUsedState copyWith({SoundUsedModel? soundUsedModelObj}) {
    return SoundUsedState(
      soundUsedModelObj: soundUsedModelObj ?? this.soundUsedModelObj,
    );
  }
}
