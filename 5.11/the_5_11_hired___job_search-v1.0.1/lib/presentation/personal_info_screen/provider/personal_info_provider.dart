import 'package:flutter/material.dart';
import 'package:the_5_11_hired___job_search/core/app_export.dart';
import 'package:the_5_11_hired___job_search/presentation/personal_info_screen/models/personal_info_model.dart';
import 'package:the_5_11_hired___job_search/data/models/me/get_me_resp.dart';
import 'dart:async';
import 'package:the_5_11_hired___job_search/data/repository/repository.dart';

/// A provider class for the PersonalInfoScreen.
///
/// This provider manages the state of the PersonalInfoScreen, including the
/// current personalInfoModelObj

// ignore_for_file: must_be_immutable
class PersonalInfoProvider extends ChangeNotifier {
  TextEditingController firstNameController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController phoneController = TextEditingController();

  TextEditingController locationController = TextEditingController();

  PersonalInfoModel personalInfoModelObj = PersonalInfoModel();

  final _repository = Repository();

  var getMeResp = GetMeResp();

  @override
  void dispose() {
    super.dispose();
    firstNameController.dispose();
    lastNameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    locationController.dispose();
  }

  FutureOr<void> callFetchMe() async {
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
    });
  }

  void _onFetchMeSuccess(GetMeResp resp) {
    emailController.text = getMeResp.data!.email!.toString();
    firstNameController.text = getMeResp.data!.name!.toString();
  }

  void _onFetchMeError() {
    //implement error method body...
  }
}
