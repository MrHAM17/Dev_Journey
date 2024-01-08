import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/channelfour_item_model.dart';
import 'package:the_6_20_movie_streaming/presentation/channel_four_screen/models/channel_four_model.dart';
part 'channel_four_state.dart';

final channelFourNotifier = StateNotifierProvider<ChannelFourNotifier,
    ChannelFourState>((ref) => ChannelFourNotifier(ChannelFourState(
        channelFourModelObj: ChannelFourModel(channelfourItemList: [
      ChannelfourItemModel(ktv: ImageConstant.imgBackgroundImage, ktv1: "K TV"),
      ChannelfourItemModel(
          ktv: ImageConstant.imgBackgroundImage56x56, ktv1: "ONENEWS TV"),
      ChannelfourItemModel(
          ktv: ImageConstant.imgBackgroundImage1, ktv1: "CNN TV"),
      ChannelfourItemModel(ktv: ImageConstant.imgBackgroundImage2, ktv1: "ESPN")
    ]))));

/// A notifier that manages the state of a ChannelFour according to the event that is dispatched to it.
class ChannelFourNotifier extends StateNotifier<ChannelFourState> {
  ChannelFourNotifier(ChannelFourState state) : super(state);
}
