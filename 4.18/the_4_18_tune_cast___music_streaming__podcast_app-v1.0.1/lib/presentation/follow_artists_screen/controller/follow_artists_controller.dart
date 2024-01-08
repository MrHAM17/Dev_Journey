import 'package:the_4_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';import 'package:the_4_18_tune_cast___music_streaming__podcast_app/presentation/follow_artists_screen/models/follow_artists_model.dart';/// A controller class for the FollowArtistsScreen.
///
/// This class manages the state of the FollowArtistsScreen, including the
/// current followArtistsModelObj
class FollowArtistsController extends GetxController {Rx<FollowArtistsModel> followArtistsModelObj = FollowArtistsModel().obs;

@override void onReady() { Get.toNamed(AppRoutes.homeContainerScreen, );Get.toNamed(AppRoutes.homeContainerScreen, ); } 
 }
