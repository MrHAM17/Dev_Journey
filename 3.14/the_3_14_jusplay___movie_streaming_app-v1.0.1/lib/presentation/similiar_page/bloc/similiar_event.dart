// ignore_for_file: must_be_immutable

part of 'similiar_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Similiar widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SimiliarEvent extends Equatable {}

/// Event that is dispatched when the Similiar widget is first created.
class SimiliarInitialEvent extends SimiliarEvent {
  @override
  List<Object?> get props => [];
}
