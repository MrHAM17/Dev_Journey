import 'package:flutter/material.dart';
import 'package:the_5_20_movie_streaming/core/app_export.dart';
import 'package:the_5_20_movie_streaming/presentation/account_five_page/models/account_five_model.dart';

/// A provider class for the AccountFivePage.
///
/// This provider manages the state of the AccountFivePage, including the
/// current accountFiveModelObj
class AccountFiveProvider extends ChangeNotifier {
  AccountFiveModel accountFiveModelObj = AccountFiveModel();

  @override
  void dispose() {
    super.dispose();
  }
}
