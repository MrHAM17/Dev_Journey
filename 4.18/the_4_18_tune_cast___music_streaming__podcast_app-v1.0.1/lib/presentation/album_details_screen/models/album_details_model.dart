import '../../../core/app_export.dart';import 'albumdetails_item_model.dart';/// This class defines the variables used in the [album_details_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AlbumDetailsModel {Rx<List<AlbumdetailsItemModel>> albumdetailsItemList = Rx([AlbumdetailsItemModel(image:ImageConstant.imgImage60.obs,songTitle: "Starboy".obs,details: "The Weeknd, Daft Punk".obs)]);

 }
