// ignore_for_file: must_be_immutable

part of 'followers_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Followers widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FollowersEvent extends Equatable {}

/// Event that is dispatched when the Followers widget is first created.
class FollowersInitialEvent extends FollowersEvent {
  @override
  List<Object?> get props => [];
}
