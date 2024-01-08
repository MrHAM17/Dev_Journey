// ignore_for_file: must_be_immutable

part of 'shop_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Shop widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ShopEvent extends Equatable {}

/// Event that is dispatched when the Shop widget is first created.
class ShopInitialEvent extends ShopEvent {
  @override
  List<Object?> get props => [];
}
