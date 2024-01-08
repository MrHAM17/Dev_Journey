import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_3_21_vertex___real_estate_app/presentation/edit_profile_screen/models/edit_profile_model.dart';import 'package:the_3_21_vertex___real_estate_app/data/models/me/get_me_resp.dart';import 'dart:async';import 'package:the_3_21_vertex___real_estate_app/data/repository/repository.dart';import 'package:fluttertoast/fluttertoast.dart';part 'edit_profile_event.dart';part 'edit_profile_state.dart';/// A bloc that manages the state of a EditProfile according to the event that is dispatched to it.
class EditProfileBloc extends Bloc<EditProfileEvent, EditProfileState> {EditProfileBloc(EditProfileState initialState) : super(initialState) { on<EditProfileInitialEvent>(_onInitialize);on<FetchMeEvent>(_callFetchMe); }

final _repository = Repository();

var getMeResp = GetMeResp();

/// Calls the https://nodedemo.dhiwise.co/device/api/v1/user/me API and triggers a [FetchMeEvent] event on the [EditProfileBloc] bloc.
///
/// The [BuildContext] parameter represents current [BuildContext]
_onInitialize(EditProfileInitialEvent event, Emitter<EditProfileState> emit, ) async  { emit(state.copyWith(fullNameController: TextEditingController(), emailController: TextEditingController(), addressController: TextEditingController(), passwordController: TextEditingController()));
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
FutureOr<void> _callFetchMe(FetchMeEvent event, Emitter<EditProfileState> emit, ) async  { await _repository.fetchMe(
headers: {'Content-type': 'application/json','Authorization': 'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYxNmZiNzBhZWJiM2RiYjVlYmVkYTBmMiIsInVzZXJuYW1lIjoiT3Jpb24xNyIsImlhdCI6MTY3ODY5NjYwOH0.ooqOoYB-4yP-kNz7weVH0TSQrZ1_edFf7AMqwWLIZNU',},
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
void _onFetchMeSuccess(GetMeResp resp, Emitter<EditProfileState> emit, ) { 
emit(state.copyWith(editProfileModelObj: state.editProfileModelObj?.copyWith( : resp.data?.email ?? '',
 : resp.data?.name ?? '',
),),); } 
void _onFetchMeError() { 
 //implement error method body...
 } 
/// Displays a toast message using the Fluttertoast library.
void _onFetchMeEventError() { 
Fluttertoast.showToast(msg: getMeResp.message.toString() ?? ''); } 
 }
