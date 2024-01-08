// ignore_for_file: must_be_immutable

part of 'followers_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FollowersTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FollowersTabContainerEvent extends Equatable {}

/// Event that is dispatched when the FollowersTabContainer widget is first created.
class FollowersTabContainerInitialEvent extends FollowersTabContainerEvent {
  @override
  List<Object?> get props => [];
}
