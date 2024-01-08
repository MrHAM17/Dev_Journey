// ignore_for_file: must_be_immutable

part of 'posts_add_effects_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PostsAddEffects widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PostsAddEffectsEvent extends Equatable {}

/// Event that is dispatched when the PostsAddEffects widget is first created.
class PostsAddEffectsInitialEvent extends PostsAddEffectsEvent {
  @override
  List<Object?> get props => [];
}
