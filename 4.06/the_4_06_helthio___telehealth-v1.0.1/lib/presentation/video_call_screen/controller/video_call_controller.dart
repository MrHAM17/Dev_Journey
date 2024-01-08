import 'package:the_4_06_helthio___telehealth/core/app_export.dart';
import 'package:the_4_06_helthio___telehealth/presentation/video_call_screen/models/video_call_model.dart';

/// A controller class for the VideoCallScreen.
///
/// This class manages the state of the VideoCallScreen, including the
/// current videoCallModelObj
class VideoCallController extends GetxController {
  Rx<VideoCallModel> videoCallModelObj = VideoCallModel().obs;
}
