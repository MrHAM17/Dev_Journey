// ignore_for_file: must_be_immutable

part of 'posts_quick_video_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PostsQuickVideo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PostsQuickVideoEvent extends Equatable {}

/// Event that is dispatched when the PostsQuickVideo widget is first created.
class PostsQuickVideoInitialEvent extends PostsQuickVideoEvent {
  @override
  List<Object?> get props => [];
}
