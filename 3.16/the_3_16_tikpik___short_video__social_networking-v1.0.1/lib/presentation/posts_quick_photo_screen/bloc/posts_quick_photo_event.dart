// ignore_for_file: must_be_immutable

part of 'posts_quick_photo_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PostsQuickPhoto widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PostsQuickPhotoEvent extends Equatable {}

/// Event that is dispatched when the PostsQuickPhoto widget is first created.
class PostsQuickPhotoInitialEvent extends PostsQuickPhotoEvent {
  @override
  List<Object?> get props => [];
}
