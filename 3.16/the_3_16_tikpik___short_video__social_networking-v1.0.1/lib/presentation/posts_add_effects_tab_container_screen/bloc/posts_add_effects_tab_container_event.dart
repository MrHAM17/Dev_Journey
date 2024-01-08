// ignore_for_file: must_be_immutable

part of 'posts_add_effects_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PostsAddEffectsTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PostsAddEffectsTabContainerEvent extends Equatable {}

/// Event that is dispatched when the PostsAddEffectsTabContainer widget is first created.
class PostsAddEffectsTabContainerInitialEvent
    extends PostsAddEffectsTabContainerEvent {
  @override
  List<Object?> get props => [];
}
