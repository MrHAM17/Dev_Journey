// ignore_for_file: must_be_immutable

part of 'trending_sounds_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TrendingSounds widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TrendingSoundsEvent extends Equatable {}

/// Event that is dispatched when the TrendingSounds widget is first created.
class TrendingSoundsInitialEvent extends TrendingSoundsEvent {
  @override
  List<Object?> get props => [];
}
