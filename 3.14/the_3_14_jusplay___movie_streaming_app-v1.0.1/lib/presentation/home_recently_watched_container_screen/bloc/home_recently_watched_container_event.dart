// ignore_for_file: must_be_immutable

part of 'home_recently_watched_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HomeRecentlyWatchedContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class HomeRecentlyWatchedContainerEvent extends Equatable {}

/// Event that is dispatched when the HomeRecentlyWatchedContainer widget is first created.
class HomeRecentlyWatchedContainerInitialEvent
    extends HomeRecentlyWatchedContainerEvent {
  @override
  List<Object?> get props => [];
}
