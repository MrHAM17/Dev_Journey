import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/downloads_item_model.dart';import 'package:the_6_18_tune_cast___music_streaming__podcast_app/presentation/downloads_screen/models/downloads_model.dart';part 'downloads_state.dart';final downloadsNotifier = StateNotifierProvider<DownloadsNotifier, DownloadsState>((ref) => DownloadsNotifier(DownloadsState(downloadsModelObj: DownloadsModel(downloadsItemList: [DownloadsItemModel(image: ImageConstant.imgImage61, songTitle: "Starboy Speed Up", details: "Just Lowkey"), DownloadsItemModel(image: ImageConstant.imgImage63, songTitle: "Blinding Lights", details: "The Weeknd")]))));
/// A notifier that manages the state of a Downloads according to the event that is dispatched to it.
class DownloadsNotifier extends StateNotifier<DownloadsState> {DownloadsNotifier(DownloadsState state) : super(state);

 }
