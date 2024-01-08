// ignore_for_file: must_be_immutable

part of 'create_new_pin_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CreateNewPinTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CreateNewPinTabContainerEvent extends Equatable {}

/// Event that is dispatched when the CreateNewPinTabContainer widget is first created.
class CreateNewPinTabContainerInitialEvent
    extends CreateNewPinTabContainerEvent {
  @override
  List<Object?> get props => [];
}
