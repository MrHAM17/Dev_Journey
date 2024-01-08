// ignore_for_file: must_be_immutable

part of 'review_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ReviewTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ReviewTabContainerEvent extends Equatable {}

/// Event that is dispatched when the ReviewTabContainer widget is first created.
class ReviewTabContainerInitialEvent extends ReviewTabContainerEvent {
  @override
  List<Object?> get props => [];
}
