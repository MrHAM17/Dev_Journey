// ignore_for_file: must_be_immutable

part of 'otp_verification_notifier.dart';

/// Represents the state of OtpVerification in the application.
class OtpVerificationState extends Equatable {
  OtpVerificationState({
    this.otpController,
    this.otpVerificationModelObj,
  });

  TextEditingController? otpController;

  OtpVerificationModel? otpVerificationModelObj;

  @override
  List<Object?> get props => [
        otpController,
        otpVerificationModelObj,
      ];

  OtpVerificationState copyWith({
    TextEditingController? otpController,
    OtpVerificationModel? otpVerificationModelObj,
  }) {
    return OtpVerificationState(
      otpController: otpController ?? this.otpController,
      otpVerificationModelObj:
          otpVerificationModelObj ?? this.otpVerificationModelObj,
    );
  }
}
