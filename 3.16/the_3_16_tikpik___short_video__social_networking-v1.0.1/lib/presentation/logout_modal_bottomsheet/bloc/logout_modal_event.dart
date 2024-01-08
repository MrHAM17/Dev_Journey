// ignore_for_file: must_be_immutable

part of 'logout_modal_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LogoutModal widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LogoutModalEvent extends Equatable {}

/// Event that is dispatched when the LogoutModal widget is first created.
class LogoutModalInitialEvent extends LogoutModalEvent {
  @override
  List<Object?> get props => [];
}
