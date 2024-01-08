// ignore_for_file: must_be_immutable

part of 'forgot_password_filled_otp_bloc.dart';

/// Represents the state of ForgotPasswordFilledOtp in the application.
class ForgotPasswordFilledOtpState extends Equatable {
  ForgotPasswordFilledOtpState({
    this.otpController,
    this.forgotPasswordFilledOtpModelObj,
  });

  TextEditingController? otpController;

  ForgotPasswordFilledOtpModel? forgotPasswordFilledOtpModelObj;

  @override
  List<Object?> get props => [
        otpController,
        forgotPasswordFilledOtpModelObj,
      ];
  ForgotPasswordFilledOtpState copyWith({
    TextEditingController? otpController,
    ForgotPasswordFilledOtpModel? forgotPasswordFilledOtpModelObj,
  }) {
    return ForgotPasswordFilledOtpState(
      otpController: otpController ?? this.otpController,
      forgotPasswordFilledOtpModelObj: forgotPasswordFilledOtpModelObj ??
          this.forgotPasswordFilledOtpModelObj,
    );
  }
}
