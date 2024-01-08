// ignore_for_file: must_be_immutable

part of 'category_comedy_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CategoryComedy widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CategoryComedyEvent extends Equatable {}

/// Event that is dispatched when the CategoryComedy widget is first created.
class CategoryComedyInitialEvent extends CategoryComedyEvent {
  @override
  List<Object?> get props => [];
}
