// ignore_for_file: must_be_immutable

part of 'episode_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Episode widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class EpisodeEvent extends Equatable {}

/// Event that is dispatched when the Episode widget is first created.
class EpisodeInitialEvent extends EpisodeEvent {
  @override
  List<Object?> get props => [];
}
