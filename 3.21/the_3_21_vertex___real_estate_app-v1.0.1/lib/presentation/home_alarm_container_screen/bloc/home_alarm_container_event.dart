// ignore_for_file: must_be_immutable

part of 'home_alarm_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HomeAlarmContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class HomeAlarmContainerEvent extends Equatable {}

/// Event that is dispatched when the HomeAlarmContainer widget is first created.
class HomeAlarmContainerInitialEvent extends HomeAlarmContainerEvent {
  @override
  List<Object?> get props => [];
}
