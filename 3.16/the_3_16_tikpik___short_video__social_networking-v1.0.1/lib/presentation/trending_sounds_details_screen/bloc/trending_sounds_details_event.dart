// ignore_for_file: must_be_immutable

part of 'trending_sounds_details_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TrendingSoundsDetails widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TrendingSoundsDetailsEvent extends Equatable {}

/// Event that is dispatched when the TrendingSoundsDetails widget is first created.
class TrendingSoundsDetailsInitialEvent extends TrendingSoundsDetailsEvent {
  @override
  List<Object?> get props => [];
}
