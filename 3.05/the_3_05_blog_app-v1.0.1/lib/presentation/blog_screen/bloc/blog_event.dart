// ignore_for_file: must_be_immutable

part of 'blog_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Blog widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class BlogEvent extends Equatable {}

/// Event that is dispatched when the Blog widget is first created.
class BlogInitialEvent extends BlogEvent {
  @override
  List<Object?> get props => [];
}
