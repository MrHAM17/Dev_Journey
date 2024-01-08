// ignore_for_file: must_be_immutable

part of 'sound_used_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SoundUsed widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SoundUsedEvent extends Equatable {}

/// Event that is dispatched when the SoundUsed widget is first created.
class SoundUsedInitialEvent extends SoundUsedEvent {
  @override
  List<Object?> get props => [];
}
