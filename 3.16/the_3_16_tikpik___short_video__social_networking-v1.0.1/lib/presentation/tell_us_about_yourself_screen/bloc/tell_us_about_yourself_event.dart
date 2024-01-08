// ignore_for_file: must_be_immutable

part of 'tell_us_about_yourself_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TellUsAboutYourself widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TellUsAboutYourselfEvent extends Equatable {}

/// Event that is dispatched when the TellUsAboutYourself widget is first created.
class TellUsAboutYourselfInitialEvent extends TellUsAboutYourselfEvent {
  @override
  List<Object?> get props => [];
}
