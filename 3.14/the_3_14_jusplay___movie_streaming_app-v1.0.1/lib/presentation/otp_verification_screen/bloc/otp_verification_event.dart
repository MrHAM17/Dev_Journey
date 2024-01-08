// ignore_for_file: must_be_immutable

part of 'otp_verification_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///OtpVerification widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OtpVerificationEvent extends Equatable {}

/// Event that is dispatched when the OtpVerification widget is first created.
class OtpVerificationInitialEvent extends OtpVerificationEvent {
  @override
  List<Object?> get props => [];
}

///event for OTP auto fill
class ChangeOTPEvent extends OtpVerificationEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}
