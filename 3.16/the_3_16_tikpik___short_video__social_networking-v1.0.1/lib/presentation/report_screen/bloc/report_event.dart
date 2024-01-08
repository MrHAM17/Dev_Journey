// ignore_for_file: must_be_immutable

part of 'report_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Report widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ReportEvent extends Equatable {}

/// Event that is dispatched when the Report widget is first created.
class ReportInitialEvent extends ReportEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing radio button
class ChangeRadioButtonEvent extends ReportEvent {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}
