// ignore_for_file: must_be_immutable

part of 'followers_details_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FollowersDetailsTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FollowersDetailsTabContainerEvent extends Equatable {}

/// Event that is dispatched when the FollowersDetailsTabContainer widget is first created.
class FollowersDetailsTabContainerInitialEvent
    extends FollowersDetailsTabContainerEvent {
  @override
  List<Object?> get props => [];
}
