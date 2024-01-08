// ignore_for_file: must_be_immutable

part of 'posts_templates_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PostsTemplates widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PostsTemplatesEvent extends Equatable {}

/// Event that is dispatched when the PostsTemplates widget is first created.
class PostsTemplatesInitialEvent extends PostsTemplatesEvent {
  @override
  List<Object?> get props => [];
}
