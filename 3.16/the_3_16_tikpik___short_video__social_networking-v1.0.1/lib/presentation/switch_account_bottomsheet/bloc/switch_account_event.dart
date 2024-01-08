// ignore_for_file: must_be_immutable

part of 'switch_account_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SwitchAccount widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SwitchAccountEvent extends Equatable {}

/// Event that is dispatched when the SwitchAccount widget is first created.
class SwitchAccountInitialEvent extends SwitchAccountEvent {
  @override
  List<Object?> get props => [];
}
