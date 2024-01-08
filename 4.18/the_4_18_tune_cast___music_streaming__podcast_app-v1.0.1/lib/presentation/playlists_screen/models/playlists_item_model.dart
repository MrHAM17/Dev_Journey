import '../../../core/app_export.dart';/// This class is used in the [playlists_item_widget] screen.
class PlaylistsItemModel {PlaylistsItemModel({this.addNewPlaylist, this.loremIpsum, this.id, }) { addNewPlaylist = addNewPlaylist  ?? Rx(ImageConstant.imgCategoriesPlus);loremIpsum = loremIpsum  ?? Rx("Add New Playlist");id = id  ?? Rx(""); }

Rx<String>? addNewPlaylist;

Rx<String>? loremIpsum;

Rx<String>? id;

 }
