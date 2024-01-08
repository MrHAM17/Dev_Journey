// ignore_for_file: must_be_immutable

part of 'trending_sounds_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TrendingSoundsTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TrendingSoundsTabContainerEvent extends Equatable {}

/// Event that is dispatched when the TrendingSoundsTabContainer widget is first created.
class TrendingSoundsTabContainerInitialEvent
    extends TrendingSoundsTabContainerEvent {
  @override
  List<Object?> get props => [];
}
