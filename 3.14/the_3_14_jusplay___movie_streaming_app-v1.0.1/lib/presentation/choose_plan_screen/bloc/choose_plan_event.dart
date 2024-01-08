// ignore_for_file: must_be_immutable

part of 'choose_plan_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ChoosePlan widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ChoosePlanEvent extends Equatable {}

/// Event that is dispatched when the ChoosePlan widget is first created.
class ChoosePlanInitialEvent extends ChoosePlanEvent {
  @override
  List<Object?> get props => [];
}
