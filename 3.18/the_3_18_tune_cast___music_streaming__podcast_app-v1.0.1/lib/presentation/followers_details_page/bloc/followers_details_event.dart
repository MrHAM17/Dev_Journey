// ignore_for_file: must_be_immutable

part of 'followers_details_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FollowersDetails widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FollowersDetailsEvent extends Equatable {}

/// Event that is dispatched when the FollowersDetails widget is first created.
class FollowersDetailsInitialEvent extends FollowersDetailsEvent {
  @override
  List<Object?> get props => [];
}
