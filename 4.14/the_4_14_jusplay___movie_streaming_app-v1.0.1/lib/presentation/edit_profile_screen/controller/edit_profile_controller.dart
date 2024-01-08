import 'package:the_4_14_jusplay___movie_streaming_app/core/app_export.dart';
import 'package:the_4_14_jusplay___movie_streaming_app/presentation/edit_profile_screen/models/edit_profile_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_14_jusplay___movie_streaming_app/data/models/me/get_me_resp.dart';
import 'package:the_4_14_jusplay___movie_streaming_app/data/apiClient/api_client.dart';
import 'package:fluttertoast/fluttertoast.dart';

/// A controller class for the EditProfileScreen.
///
/// This class manages the state of the EditProfileScreen, including the
/// current editProfileModelObj
class EditProfileController extends GetxController {
  TextEditingController nameController = TextEditingController();

  TextEditingController userNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  Rx<EditProfileModel> editProfileModelObj = EditProfileModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  GetMeResp getMeResp = GetMeResp();

  @override
  void onClose() {
    super.onClose();
    nameController.dispose();
    userNameController.dispose();
    emailController.dispose();
    phoneNumberController.dispose();
  }

  onSelected(dynamic value) {
    for (var element in editProfileModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    editProfileModelObj.value.dropdownItemList.refresh();
  }

  /// Calls the https://nodedemo.dhiwise.co/device/api/v1/user/me API with the specified request data.
  ///
  /// The [Map] parameter represents request body
  Future<void> callFetchMe() async {
    try {
      getMeResp = await Get.find<ApiClient>().fetchMe(headers: {
        'Content-type': 'application/json',
        'Authorization':
            'Bearer  eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYxNmZiNzBhZWJiM2RiYjVlYmVkYTBmMiIsInVzZXJuYW1lIjoiT3Jpb24xNyIsImlhdCI6MTY3ODc3NjY2OX0.16TzzeJMkGbsT-hk-wigjBt4xeJNcwNzVvnl05evYUk',
      });
      _handleFetchMeSuccess();
    } on GetMeResp catch (e) {
      getMeResp = e;
      rethrow;
    }
  }

  /// handles the success response for the API
  void _handleFetchMeSuccess() {}

  /// calls the [https://nodedemo.dhiwise.co/device/api/v1/user/me] API
  ///
  /// It has [GetMeReq] as a parameter which will be passed as a API request body
  /// If the call is successful, the function calls the `_onFetchMeSuccess()` function.
  /// If the call fails, the function calls the `_onFetchMeError()` function.
  ///
  /// Throws a `NoInternetException` if there is no internet connection.
  @override
  Future<void> onReady() async {
    try {
      await callFetchMe();
      _onFetchMeSuccess();
    } on GetMeResp {
      _onFetchMeError();
    } on NoInternetException catch (e) {
      Get.rawSnackbar(message: e.toString());
    } catch (e) {
      //TODO: Handle generic errors
    }
  }

  void _onFetchMeSuccess() {}

  /// Displays a toast message using the Fluttertoast library.
  void _onFetchMeError() {
    Fluttertoast.showToast(msg: getMeResp.message.toString() ?? '');
  }
}
