// ignore_for_file: must_be_immutable

part of 'forgot_password_filled_otp_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ForgotPasswordFilledOtp widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ForgotPasswordFilledOtpEvent extends Equatable {}

/// Event that is dispatched when the ForgotPasswordFilledOtp widget is first created.
class ForgotPasswordFilledOtpInitialEvent extends ForgotPasswordFilledOtpEvent {
  @override
  List<Object?> get props => [];
}

///event for OTP auto fill
class ChangeOTPEvent extends ForgotPasswordFilledOtpEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}
