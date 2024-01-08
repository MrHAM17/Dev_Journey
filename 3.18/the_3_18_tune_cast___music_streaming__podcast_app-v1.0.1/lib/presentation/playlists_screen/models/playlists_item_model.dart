import '../../../core/app_export.dart';/// This class is used in the [playlists_item_widget] screen.
class PlaylistsItemModel {PlaylistsItemModel({this.addNewPlaylist, this.loremIpsum, this.id, }) { addNewPlaylist = addNewPlaylist  ?? ImageConstant.imgCategoriesPlus;loremIpsum = loremIpsum  ?? "Add New Playlist";id = id  ?? ""; }

String? addNewPlaylist;

String? loremIpsum;

String? id;

 }
