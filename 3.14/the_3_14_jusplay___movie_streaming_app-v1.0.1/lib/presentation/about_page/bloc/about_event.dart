// ignore_for_file: must_be_immutable

part of 'about_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///About widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AboutEvent extends Equatable {}

/// Event that is dispatched when the About widget is first created.
class AboutInitialEvent extends AboutEvent {
  @override
  List<Object?> get props => [];
}
