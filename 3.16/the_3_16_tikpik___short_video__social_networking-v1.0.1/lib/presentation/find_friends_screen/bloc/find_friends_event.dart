// ignore_for_file: must_be_immutable

part of 'find_friends_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FindFriends widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FindFriendsEvent extends Equatable {}

/// Event that is dispatched when the FindFriends widget is first created.
class FindFriendsInitialEvent extends FindFriendsEvent {
  @override
  List<Object?> get props => [];
}
