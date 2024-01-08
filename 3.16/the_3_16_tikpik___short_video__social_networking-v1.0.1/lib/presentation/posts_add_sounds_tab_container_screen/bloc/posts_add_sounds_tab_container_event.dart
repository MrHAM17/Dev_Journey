// ignore_for_file: must_be_immutable

part of 'posts_add_sounds_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PostsAddSoundsTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PostsAddSoundsTabContainerEvent extends Equatable {}

/// Event that is dispatched when the PostsAddSoundsTabContainer widget is first created.
class PostsAddSoundsTabContainerInitialEvent
    extends PostsAddSoundsTabContainerEvent {
  @override
  List<Object?> get props => [];
}
