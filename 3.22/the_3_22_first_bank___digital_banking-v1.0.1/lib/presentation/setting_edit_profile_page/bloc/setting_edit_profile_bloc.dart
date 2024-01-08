import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_3_22_first_bank___digital_banking/presentation/setting_edit_profile_page/models/setting_edit_profile_model.dart';import 'package:the_3_22_first_bank___digital_banking/data/models/me/get_me_resp.dart';import 'dart:async';import 'package:the_3_22_first_bank___digital_banking/data/repository/repository.dart';import 'package:fluttertoast/fluttertoast.dart';part 'setting_edit_profile_event.dart';part 'setting_edit_profile_state.dart';/// A bloc that manages the state of a SettingEditProfile according to the event that is dispatched to it.
class SettingEditProfileBloc extends Bloc<SettingEditProfileEvent, SettingEditProfileState> {SettingEditProfileBloc(SettingEditProfileState initialState) : super(initialState) { on<SettingEditProfileInitialEvent>(_onInitialize);on<FetchMeEvent>(_callFetchMe); }

final _repository = Repository();

var getMeResp = GetMeResp();

/// Calls the https://nodedemo.dhiwise.co/device/api/v1/user/me API and triggers a [FetchMeEvent] event on the [SettingEditProfileBloc] bloc.
///
/// The [BuildContext] parameter represents current [BuildContext]
_onInitialize(SettingEditProfileInitialEvent event, Emitter<SettingEditProfileState> emit, ) async  { emit(state.copyWith(nameController: TextEditingController(), userNameController: TextEditingController(), emailController: TextEditingController(), passwordController: TextEditingController(), addressController: TextEditingController(), addressController1: TextEditingController(), cityController: TextEditingController(), countryController: TextEditingController()));
add(FetchMeEvent(onFetchMeEventError: () {

_onFetchMeEventError();
},),);
 } 
/// Calls [https://nodedemo.dhiwise.co/device/api/v1/user/me] with the provided event and emits the state.
///
/// The [FetchMeEvent] parameter is used for handling event data
/// The [emit] parameter is used for emitting the state
///
/// Throws an error if an error occurs during the API call process.
FutureOr<void> _callFetchMe(FetchMeEvent event, Emitter<SettingEditProfileState> emit, ) async  { await _repository.fetchMe(
headers: {'Content-type': 'application/json','Authorization': 'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYxNmZiNzBhZWJiM2RiYjVlYmVkYTBmMiIsInVzZXJuYW1lIjoiT3Jpb24xNyIsImlhdCI6MTY3ODY4OTgyMn0.fh9TL3QIkwUvqXNQ9ztlvb5qXnN-st_70G9CsvVB0M8',},
)
.then((value) async {

	getMeResp = value;
_onFetchMeSuccess(value,emit);
})
.onError((error,stackTrace) {

	//implement error call
_onFetchMeError();
event.onFetchMeEventError?.call();
})
; } 
void _onFetchMeSuccess(GetMeResp resp, Emitter<SettingEditProfileState> emit, ) { 
emit(state.copyWith(settingEditProfileModelObj: state.settingEditProfileModelObj?.copyWith( : resp.data?.username ?? '',
 : resp.data?.email ?? '',
 : resp.data?.name ?? '',
),),); } 
void _onFetchMeError() { 
 //implement error method body...
 } 
/// Displays a toast message using the Fluttertoast library.
void _onFetchMeEventError() { 
Fluttertoast.showToast(msg: getMeResp.message.toString() ?? ''); } 
 }
