// ignore_for_file: must_be_immutable

part of 'home_recently_watched_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HomeRecentlyWatched widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class HomeRecentlyWatchedEvent extends Equatable {}

/// Event that is dispatched when the HomeRecentlyWatched widget is first created.
class HomeRecentlyWatchedInitialEvent extends HomeRecentlyWatchedEvent {
  @override
  List<Object?> get props => [];
}
