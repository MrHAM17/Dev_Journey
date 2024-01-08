// ignore_for_file: must_be_immutable

part of 'total_likes_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TotalLikes widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TotalLikesEvent extends Equatable {}

/// Event that is dispatched when the TotalLikes widget is first created.
class TotalLikesInitialEvent extends TotalLikesEvent {
  @override
  List<Object?> get props => [];
}
