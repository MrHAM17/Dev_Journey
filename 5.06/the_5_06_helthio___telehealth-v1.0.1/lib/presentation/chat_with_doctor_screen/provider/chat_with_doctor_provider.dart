import 'package:flutter/material.dart';
import 'package:the_5_06_helthio___telehealth/core/app_export.dart';
import 'package:the_5_06_helthio___telehealth/presentation/chat_with_doctor_screen/models/chat_with_doctor_model.dart';

/// A provider class for the ChatWithDoctorScreen.
///
/// This provider manages the state of the ChatWithDoctorScreen, including the
/// current chatWithDoctorModelObj

// ignore_for_file: must_be_immutable
class ChatWithDoctorProvider extends ChangeNotifier {
  TextEditingController messageController = TextEditingController();

  ChatWithDoctorModel chatWithDoctorModelObj = ChatWithDoctorModel();

  @override
  void dispose() {
    super.dispose();
    messageController.dispose();
  }
}
