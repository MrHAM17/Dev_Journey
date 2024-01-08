// ignore_for_file: must_be_immutable

part of 'manage_accounts_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ManageAccounts widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ManageAccountsEvent extends Equatable {}

/// Event that is dispatched when the ManageAccounts widget is first created.
class ManageAccountsInitialEvent extends ManageAccountsEvent {
  @override
  List<Object?> get props => [];
}
