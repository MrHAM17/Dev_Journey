import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_11_hired___job_search/presentation/personal_info_screen/models/personal_info_model.dart';
part 'personal_info_state.dart';

final personalInfoNotifier =
    StateNotifierProvider<PersonalInfoNotifier, PersonalInfoState>(
  (ref) => PersonalInfoNotifier(PersonalInfoState(
    firstNameController: TextEditingController(),
    lastNameController: TextEditingController(),
    emailController: TextEditingController(),
    phoneController: TextEditingController(),
    locationController: TextEditingController(),
    personalInfoModelObj: PersonalInfoModel(),
  )),
);

/// A notifier that manages the state of a PersonalInfo according to the event that is dispatched to it.
class PersonalInfoNotifier extends StateNotifier<PersonalInfoState> {
  PersonalInfoNotifier(PersonalInfoState state) : super(state) {}
}
