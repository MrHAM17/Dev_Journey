import 'package:flutter/material.dart';
import 'package:the_5_20_movie_streaming/core/app_export.dart';
import 'package:the_5_20_movie_streaming/presentation/channel_five_screen/models/channel_five_model.dart';
import '../models/movies6_item_model.dart';

/// A provider class for the ChannelFiveScreen.
///
/// This provider manages the state of the ChannelFiveScreen, including the
/// current channelFiveModelObj

// ignore_for_file: must_be_immutable
class ChannelFiveProvider extends ChangeNotifier {
  ChannelFiveModel channelFiveModelObj = ChannelFiveModel();

  @override
  void dispose() {
    super.dispose();
  }
}
