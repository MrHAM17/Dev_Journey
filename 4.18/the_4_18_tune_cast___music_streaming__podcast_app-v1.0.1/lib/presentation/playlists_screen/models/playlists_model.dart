import '../../../core/app_export.dart';import 'playlists_item_model.dart';/// This class defines the variables used in the [playlists_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PlaylistsModel {Rx<List<PlaylistsItemModel>> playlistsItemList = Rx([PlaylistsItemModel(addNewPlaylist:ImageConstant.imgCategoriesPlus.obs,loremIpsum: "Add New Playlist".obs)]);

 }
