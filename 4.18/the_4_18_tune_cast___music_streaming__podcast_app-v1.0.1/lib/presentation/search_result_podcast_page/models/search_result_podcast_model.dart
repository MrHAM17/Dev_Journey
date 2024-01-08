import '../../../core/app_export.dart';import 'frame1_item_model.dart';import 'fiftynine_item_model.dart';/// This class defines the variables used in the [search_result_podcast_page],
/// and is typically used to hold data that is passed between different parts of the application.
class SearchResultPodcastModel {Rx<List<Frame1ItemModel>> frame1ItemList = Rx([Frame1ItemModel(theJordanHarb:ImageConstant.imgImage31.obs,billSullivan: "The Jordan Harb...".obs),Frame1ItemModel(theJordanHarb:ImageConstant.imgImage32.obs,billSullivan: "Apple Talk".obs),Frame1ItemModel(theJordanHarb:ImageConstant.imgImage33.obs,billSullivan: "Dr. Death".obs)]);

Rx<List<FiftynineItemModel>> fiftynineItemList = Rx([FiftynineItemModel(image:ImageConstant.imgImage80x80.obs,podcastTitle: "837: Tristan Harris | Reclaiming Our Future with ...".obs,author: "Apple Talk".obs,text: "|".obs,time: "48:26 mins".obs,image1:ImageConstant.imgFavorite.obs,appleTalk:ImageConstant.imgIconlyLightOutlineArrowGray9000120x20.obs),FiftynineItemModel(image:ImageConstant.imgImage73.obs,podcastTitle: "593: Dallas Taylor | The Psychology of Sound Design".obs,author: "What a Day".obs,text: "|".obs,time: "56:42 mins".obs,image1:ImageConstant.imgFavoriteOnprimarycontainer.obs,appleTalk:ImageConstant.imgIconlyLightOutlineArrowGray90001.obs)]);

 }
