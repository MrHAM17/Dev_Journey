import 'package:the_4_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'package:the_4_18_tune_cast___music_streaming__podcast_app/presentation/audio_video_screen/models/audio_video_model.dart';/// A controller class for the AudioVideoScreen.
///
/// This class manages the state of the AudioVideoScreen, including the
/// current audioVideoModelObj
class AudioVideoController extends GetxController {Rx<AudioVideoModel> audioVideoModelObj = AudioVideoModel().obs;

Rx<bool> isSelectedSwitch = false.obs;

Rx<bool> isSelectedSwitch1 = false.obs;

 }
