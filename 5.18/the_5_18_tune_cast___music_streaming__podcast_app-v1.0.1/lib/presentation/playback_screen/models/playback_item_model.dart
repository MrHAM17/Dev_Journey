import '../../../core/app_export.dart';/// This class is used in the [playback_item_widget] screen.
class PlaybackItemModel {PlaybackItemModel({this.automix, this.allowsSeamless, this.isSelectedSwitch, this.id, }) { automix = automix  ?? "Automix";allowsSeamless = allowsSeamless  ?? "Allows seamless transitions between songs on select playlists.";isSelectedSwitch = isSelectedSwitch  ?? false;id = id  ?? ""; }

String? automix;

String? allowsSeamless;

bool? isSelectedSwitch;

String? id;

 }
