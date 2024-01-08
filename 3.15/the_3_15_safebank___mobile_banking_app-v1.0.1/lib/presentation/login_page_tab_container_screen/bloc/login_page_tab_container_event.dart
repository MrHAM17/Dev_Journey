// ignore_for_file: must_be_immutable

part of 'login_page_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LoginPageTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LoginPageTabContainerEvent extends Equatable {}

/// Event that is dispatched when the LoginPageTabContainer widget is first created.
class LoginPageTabContainerInitialEvent extends LoginPageTabContainerEvent {
  @override
  List<Object?> get props => [];
}
