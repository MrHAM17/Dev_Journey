import '../../../core/app_export.dart';import 'playback_item_model.dart';/// This class defines the variables used in the [playback_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PlaybackModel {Rx<List<PlaybackItemModel>> playbackItemList = Rx([PlaybackItemModel(automix: "Automix".obs,allowsSeamless: "Allows seamless transitions between songs on select playlists.".obs),PlaybackItemModel(automix: "Gapless".obs,allowsSeamless: "Allows gapless playback.".obs),PlaybackItemModel(automix: "Allow Explicit Content".obs,allowsSeamless: "Turn on play explicit content.".obs),PlaybackItemModel(automix: "Show Unplayable Songs".obs,allowsSeamless: "Show song that are unplayable.".obs),PlaybackItemModel(automix: "Normalize Volume".obs,allowsSeamless: "Set the same volume level for all tracks.".obs),PlaybackItemModel(automix: "Mono Audio".obs,allowsSeamless: "Makes tke left and right speakers play the same audio.".obs),PlaybackItemModel(automix: "Device Broadcast Status".obs,allowsSeamless: "Allow other apps on your device to see what you are listening to.".obs)]);

 }
