import 'package:flutter/material.dart';import 'package:the_5_01_e_commerce/core/app_export.dart';import 'package:the_5_01_e_commerce/presentation/account_page/models/account_model.dart';/// A provider class for the AccountPage.
///
/// This provider manages the state of the AccountPage, including the
/// current accountModelObj

// ignore_for_file: must_be_immutable
class AccountProvider extends ChangeNotifier {AccountModel accountModelObj = AccountModel();

@override void dispose() { super.dispose(); } 
 }
