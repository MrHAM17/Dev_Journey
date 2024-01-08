import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/channelsix_item_model.dart';
import 'package:the_6_20_movie_streaming/presentation/channel_six_page/models/channel_six_model.dart';
part 'channel_six_state.dart';

final channelSixNotifier =
    StateNotifierProvider<ChannelSixNotifier, ChannelSixState>(
  (ref) => ChannelSixNotifier(ChannelSixState(
    channelSixModelObj: ChannelSixModel(channelsixItemList: [
      ChannelsixItemModel(header: "Last time we meet", time: "02:00 AM (EST)"),
      ChannelsixItemModel(header: "Pain", time: "05:00 AM (EST)"),
      ChannelsixItemModel(header: "I Don't Think So", time: "06:00 AM (EST)"),
      ChannelsixItemModel(header: "Love You More", time: "04:00 AM (EST)"),
      ChannelsixItemModel(header: "War", time: "08:00 AM (EST)")
    ]),
  )),
);

/// A notifier that manages the state of a ChannelSix according to the event that is dispatched to it.
class ChannelSixNotifier extends StateNotifier<ChannelSixState> {
  ChannelSixNotifier(ChannelSixState state) : super(state) {}
}
