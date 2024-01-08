import 'package:flutter/material.dart';
import 'package:the_5_20_movie_streaming/core/app_export.dart';
import 'package:the_5_20_movie_streaming/presentation/channel_six_page/models/channel_six_model.dart';
import '../models/channelsix_item_model.dart';

/// A provider class for the ChannelSixPage.
///
/// This provider manages the state of the ChannelSixPage, including the
/// current channelSixModelObj

// ignore_for_file: must_be_immutable
class ChannelSixProvider extends ChangeNotifier {
  ChannelSixModel channelSixModelObj = ChannelSixModel();

  @override
  void dispose() {
    super.dispose();
  }
}
