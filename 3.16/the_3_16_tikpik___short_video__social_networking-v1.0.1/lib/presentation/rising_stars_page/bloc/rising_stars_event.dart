// ignore_for_file: must_be_immutable

part of 'rising_stars_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///RisingStars widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class RisingStarsEvent extends Equatable {}

/// Event that is dispatched when the RisingStars widget is first created.
class RisingStarsInitialEvent extends RisingStarsEvent {
  @override
  List<Object?> get props => [];
}
