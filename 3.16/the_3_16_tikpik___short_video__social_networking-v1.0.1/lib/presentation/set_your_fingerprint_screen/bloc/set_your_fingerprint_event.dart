// ignore_for_file: must_be_immutable

part of 'set_your_fingerprint_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SetYourFingerprint widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SetYourFingerprintEvent extends Equatable {}

/// Event that is dispatched when the SetYourFingerprint widget is first created.
class SetYourFingerprintInitialEvent extends SetYourFingerprintEvent {
  @override
  List<Object?> get props => [];
}
