import 'package:the_4_20_movie_streaming/core/app_export.dart';
import 'package:the_4_20_movie_streaming/presentation/channel_four_screen/models/channel_four_model.dart';

/// A controller class for the ChannelFourScreen.
///
/// This class manages the state of the ChannelFourScreen, including the
/// current channelFourModelObj
class ChannelFourController extends GetxController {
  Rx<ChannelFourModel> channelFourModelObj = ChannelFourModel().obs;
}
