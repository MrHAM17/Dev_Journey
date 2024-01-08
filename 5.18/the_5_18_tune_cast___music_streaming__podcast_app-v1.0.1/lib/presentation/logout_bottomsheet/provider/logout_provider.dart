import 'package:flutter/material.dart';
import 'package:the_5_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';
import 'package:the_5_18_tune_cast___music_streaming__podcast_app/presentation/logout_bottomsheet/models/logout_model.dart';

/// A provider class for the LogoutBottomsheet.
///
/// This provider manages the state of the LogoutBottomsheet, including the
/// current logoutModelObj
class LogoutProvider extends ChangeNotifier {
  LogoutModel logoutModelObj = LogoutModel();

  @override
  void dispose() {
    super.dispose();
  }
}
