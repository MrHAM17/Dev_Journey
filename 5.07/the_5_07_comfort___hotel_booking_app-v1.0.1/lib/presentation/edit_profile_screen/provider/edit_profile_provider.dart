import 'package:flutter/material.dart';import 'package:the_5_07_comfort___hotel_booking_app/core/app_export.dart';import 'package:the_5_07_comfort___hotel_booking_app/presentation/edit_profile_screen/models/edit_profile_model.dart';import 'package:country_pickers/country.dart';import 'package:country_pickers/utils/utils.dart';import 'package:the_5_07_comfort___hotel_booking_app/data/models/me/get_me_resp.dart';import 'dart:async';import 'package:the_5_07_comfort___hotel_booking_app/data/repository/repository.dart';/// A provider class for the EditProfileScreen.
///
/// This provider manages the state of the EditProfileScreen, including the
/// current editProfileModelObj

// ignore_for_file: must_be_immutable
class EditProfileProvider extends ChangeNotifier {TextEditingController labelController = TextEditingController();

TextEditingController labelController1 = TextEditingController();

TextEditingController dateController = TextEditingController();

TextEditingController emailController = TextEditingController();

TextEditingController phoneNumberController = TextEditingController();

EditProfileModel editProfileModelObj = EditProfileModel();

Country? selectedCountry;

final _repository = Repository();

var getMeResp = GetMeResp();

@override void dispose() { super.dispose(); labelController.dispose(); labelController1.dispose(); dateController.dispose(); emailController.dispose(); phoneNumberController.dispose(); } 
onSelected(dynamic value) { for (var element in editProfileModelObj.dropdownItemList) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} notifyListeners(); } 
onSelected1(dynamic value) { for (var element in editProfileModelObj.dropdownItemList1) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} notifyListeners(); } 
void changeCountry(Country value) { selectedCountry = value; notifyListeners(); } 
FutureOr<void> callFetchMe({Function? onError}) async  { await _repository.fetchMe(
headers: {'Content-type': 'application/json','Authorization': 'Bearer  eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYxNmZiNzBhZWJiM2RiYjVlYmVkYTBmMiIsInVzZXJuYW1lIjoiT3Jpb24xNyIsImlhdCI6MTY3ODc3NjY2OX0.16TzzeJMkGbsT-hk-wigjBt4xeJNcwNzVvnl05evYUk',},
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
editProfileModelObj.labelController1 = getMeResp.data!.username!.toString();emailController.text = getMeResp.data!.email!.toString();labelController.text = getMeResp.data!.name!.toString(); } 
void _onFetchMeError() { 
 //implement error method body...
 } 
 }
