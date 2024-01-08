// ignore_for_file: must_be_immutable

part of 'qr_code_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///QrCode widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class QrCodeEvent extends Equatable {}

/// Event that is dispatched when the QrCode widget is first created.
class QrCodeInitialEvent extends QrCodeEvent {
  @override
  List<Object?> get props => [];
}
