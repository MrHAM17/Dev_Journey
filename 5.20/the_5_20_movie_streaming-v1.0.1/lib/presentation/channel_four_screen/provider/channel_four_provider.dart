import 'package:flutter/material.dart';
import 'package:the_5_20_movie_streaming/core/app_export.dart';
import 'package:the_5_20_movie_streaming/presentation/channel_four_screen/models/channel_four_model.dart';
import '../models/channelfour_item_model.dart';

/// A provider class for the ChannelFourScreen.
///
/// This provider manages the state of the ChannelFourScreen, including the
/// current channelFourModelObj

// ignore_for_file: must_be_immutable
class ChannelFourProvider extends ChangeNotifier {
  ChannelFourModel channelFourModelObj = ChannelFourModel();

  @override
  void dispose() {
    super.dispose();
  }
}
