// ignore_for_file: must_be_immutable

part of 'terms_and_conditions_bloc.dart';

/// Represents the state of TermsAndConditions in the application.
class TermsAndConditionsState extends Equatable {
  TermsAndConditionsState({this.termsAndConditionsModelObj});

  TermsAndConditionsModel? termsAndConditionsModelObj;

  @override
  List<Object?> get props => [
        termsAndConditionsModelObj,
      ];
  TermsAndConditionsState copyWith(
      {TermsAndConditionsModel? termsAndConditionsModelObj}) {
    return TermsAndConditionsState(
      termsAndConditionsModelObj:
          termsAndConditionsModelObj ?? this.termsAndConditionsModelObj,
    );
  }
}
