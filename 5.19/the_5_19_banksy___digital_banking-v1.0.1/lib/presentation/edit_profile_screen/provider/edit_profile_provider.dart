import 'package:flutter/material.dart';
import 'package:the_5_19_banksy___digital_banking/core/app_export.dart';
import 'package:the_5_19_banksy___digital_banking/presentation/edit_profile_screen/models/edit_profile_model.dart';
import 'package:the_5_19_banksy___digital_banking/data/models/me/get_me_resp.dart';
import 'dart:async';
import 'package:the_5_19_banksy___digital_banking/data/repository/repository.dart';

/// A provider class for the EditProfileScreen.
///
/// This provider manages the state of the EditProfileScreen, including the
/// current editProfileModelObj

// ignore_for_file: must_be_immutable
class EditProfileProvider extends ChangeNotifier {
  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController phoneController = TextEditingController();

  EditProfileModel editProfileModelObj = EditProfileModel();

  final _repository = Repository();

  var getMeResp = GetMeResp();

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    emailController.dispose();
    phoneController.dispose();
  }

  FutureOr<void> callFetchMe({Function? onError}) async {
    await _repository.fetchMe(
      headers: {
        'Content-type': 'application/json',
        'Authorization':
            'Bearer  eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYxNmZiNzBhZWJiM2RiYjVlYmVkYTBmMiIsInVzZXJuYW1lIjoiT3Jpb24xNyIsImlhdCI6MTY3ODc3NjY2OX0.16TzzeJMkGbsT-hk-wigjBt4xeJNcwNzVvnl05evYUk',
      },
    ).then((value) async {
      getMeResp = value;
      _onFetchMeSuccess(value);
      notifyListeners();
    }).onError((error, stackTrace) {
      //implement error call
      _onFetchMeError();
      onError?.call();
    });
  }

  void _onFetchMeSuccess(GetMeResp resp) {}
  void _onFetchMeError() {
    //implement error method body...
  }
}
