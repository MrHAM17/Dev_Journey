import 'package:flutter/material.dart';import 'package:the_5_21_vertex___real_estate_app/core/app_export.dart';import 'package:the_5_21_vertex___real_estate_app/presentation/edit_profile_screen/models/edit_profile_model.dart';import 'package:the_5_21_vertex___real_estate_app/data/models/me/get_me_resp.dart';import 'dart:async';import 'package:the_5_21_vertex___real_estate_app/data/repository/repository.dart';/// A provider class for the EditProfileScreen.
///
/// This provider manages the state of the EditProfileScreen, including the
/// current editProfileModelObj

// ignore_for_file: must_be_immutable
class EditProfileProvider extends ChangeNotifier {TextEditingController fullNameController = TextEditingController();

TextEditingController emailController = TextEditingController();

TextEditingController addressController = TextEditingController();

TextEditingController passwordController = TextEditingController();

EditProfileModel editProfileModelObj = EditProfileModel();

final _repository = Repository();

var getMeResp = GetMeResp();

@override void dispose() { super.dispose(); fullNameController.dispose(); emailController.dispose(); addressController.dispose(); passwordController.dispose(); } 
FutureOr<void> callFetchMe({Function? onError}) async  { await _repository.fetchMe(
headers: {'Content-type': 'application/json','Authorization': 'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYxNmZiNzBhZWJiM2RiYjVlYmVkYTBmMiIsInVzZXJuYW1lIjoiT3Jpb24xNyIsImlhdCI6MTY3ODY5NjYwOH0.ooqOoYB-4yP-kNz7weVH0TSQrZ1_edFf7AMqwWLIZNU',},
)
.then((value) async {

	getMeResp = value;
_onFetchMeSuccess(value);
notifyListeners();
})
.onError((error,stackTrace) {

	//implement error call
_onFetchMeError();
onError?.call();
})
; } 
void _onFetchMeSuccess(GetMeResp resp) { 
 } 
void _onFetchMeError() { 
 //implement error method body...
 } 
 }
