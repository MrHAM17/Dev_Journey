// ignore_for_file: must_be_immutable

part of 'set_your_fingerprint_notifier.dart';

/// Represents the state of SetYourFingerprint in the application.
class SetYourFingerprintState extends Equatable {
  SetYourFingerprintState({this.setYourFingerprintModelObj});

  SetYourFingerprintModel? setYourFingerprintModelObj;

  @override
  List<Object?> get props => [
        setYourFingerprintModelObj,
      ];

  SetYourFingerprintState copyWith(
      {SetYourFingerprintModel? setYourFingerprintModelObj}) {
    return SetYourFingerprintState(
      setYourFingerprintModelObj:
          setYourFingerprintModelObj ?? this.setYourFingerprintModelObj,
    );
  }
}
