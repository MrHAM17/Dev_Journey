// ignore_for_file: must_be_immutable

part of 'edit_profile_bloc.dart';

/// Represents the state of EditProfile in the application.
class EditProfileState extends Equatable {
  EditProfileState({
    this.lockController,
    this.settingsController,
    this.emailController,
    this.editProfileModelObj,
  });

  TextEditingController? lockController;

  TextEditingController? settingsController;

  TextEditingController? emailController;

  EditProfileModel? editProfileModelObj;

  @override
  List<Object?> get props => [
        lockController,
        settingsController,
        emailController,
        editProfileModelObj,
      ];
  EditProfileState copyWith({
    TextEditingController? lockController,
    TextEditingController? settingsController,
    TextEditingController? emailController,
    EditProfileModel? editProfileModelObj,
  }) {
    return EditProfileState(
      lockController: lockController ?? this.lockController,
      settingsController: settingsController ?? this.settingsController,
      emailController: emailController ?? this.emailController,
      editProfileModelObj: editProfileModelObj ?? this.editProfileModelObj,
    );
  }
}
