// ignore_for_file: must_be_immutable

part of 'posts_edit_page_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PostsEditPage widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PostsEditPageEvent extends Equatable {}

/// Event that is dispatched when the PostsEditPage widget is first created.
class PostsEditPageInitialEvent extends PostsEditPageEvent {
  @override
  List<Object?> get props => [];
}
