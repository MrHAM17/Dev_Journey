// ignore_for_file: must_be_immutable

part of 'home_listing_draw_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HomeListingDraw widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class HomeListingDrawEvent extends Equatable {}

/// Event that is dispatched when the HomeListingDraw widget is first created.
class HomeListingDrawInitialEvent extends HomeListingDrawEvent {
  @override
  List<Object?> get props => [];
}
