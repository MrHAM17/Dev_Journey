// ignore_for_file: must_be_immutable

part of 'sign_in_bloc.dart';

/// Represents the state of SignIn in the application.
class SignInState extends Equatable {
  SignInState({this.signInModelObj});

  SignInModel? signInModelObj;

  @override
  List<Object?> get props => [
        signInModelObj,
      ];
  SignInState copyWith({SignInModel? signInModelObj}) {
    return SignInState(
      signInModelObj: signInModelObj ?? this.signInModelObj,
    );
  }
}
