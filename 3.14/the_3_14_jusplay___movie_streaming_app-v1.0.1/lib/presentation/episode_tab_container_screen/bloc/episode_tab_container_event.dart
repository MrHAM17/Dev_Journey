// ignore_for_file: must_be_immutable

part of 'episode_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///EpisodeTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class EpisodeTabContainerEvent extends Equatable {}

/// Event that is dispatched when the EpisodeTabContainer widget is first created.
class EpisodeTabContainerInitialEvent extends EpisodeTabContainerEvent {
  @override
  List<Object?> get props => [];
}
