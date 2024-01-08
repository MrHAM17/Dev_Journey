import 'package:flutter/material.dart';
import 'package:the_5_19_banksy___digital_banking/core/app_export.dart';
import 'package:the_5_19_banksy___digital_banking/presentation/profile_page/models/profile_model.dart';
import 'package:the_5_19_banksy___digital_banking/data/models/me/get_me_resp.dart';
import 'dart:async';
import 'package:the_5_19_banksy___digital_banking/data/repository/repository.dart';

/// A provider class for the ProfilePage.
///
/// This provider manages the state of the ProfilePage, including the
/// current profileModelObj

// ignore_for_file: must_be_immutable
class ProfileProvider extends ChangeNotifier {
  ProfileModel profileModelObj = ProfileModel();

  bool isSelectedSwitch = false;

  final _repository = Repository();

  var getMeResp = GetMeResp();

  @override
  void dispose() {
    super.dispose();
  }

  void changeSwitchBox1(bool value) {
    isSelectedSwitch = value;
    notifyListeners();
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
    profileModelObj.email = getMeResp.data!.email!.toString();
    profileModelObj.suzaneJobs = getMeResp.data!.name!.toString();
  }

  void _onFetchMeError() {
    //implement error method body...
  }
}
