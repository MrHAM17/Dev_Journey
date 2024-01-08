// ignore_for_file: must_be_immutable

part of 'posts_add_sounds_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PostsAddSounds widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PostsAddSoundsEvent extends Equatable {}

/// Event that is dispatched when the PostsAddSounds widget is first created.
class PostsAddSoundsInitialEvent extends PostsAddSoundsEvent {
  @override
  List<Object?> get props => [];
}
