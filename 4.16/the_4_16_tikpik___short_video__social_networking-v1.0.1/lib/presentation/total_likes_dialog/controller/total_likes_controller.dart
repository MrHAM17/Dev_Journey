import 'package:the_4_16_tikpik___short_video__social_networking/core/app_export.dart';
import 'package:the_4_16_tikpik___short_video__social_networking/presentation/total_likes_dialog/models/total_likes_model.dart';

/// A controller class for the TotalLikesDialog.
///
/// This class manages the state of the TotalLikesDialog, including the
/// current totalLikesModelObj
class TotalLikesController extends GetxController {
  Rx<TotalLikesModel> totalLikesModelObj = TotalLikesModel().obs;
}
