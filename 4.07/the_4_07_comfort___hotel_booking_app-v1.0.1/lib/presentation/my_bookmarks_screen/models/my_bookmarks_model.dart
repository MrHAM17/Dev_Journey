import '../../../core/app_export.dart';import 'mybookmarks_item_model.dart';/// This class defines the variables used in the [my_bookmarks_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MyBookmarksModel {Rx<List<MybookmarksItemModel>> mybookmarksItemList = Rx([MybookmarksItemModel(image:ImageConstant.imgRectangle4100x100.obs,presidentMilaDe: "De Paris Monte-Carlo Hotel".obs,fortyEight: "4.6".obs,parisFrance: "Paris, France".obs,price: "29".obs,night: "/ night".obs),MybookmarksItemModel(image:ImageConstant.imgRectangle41.obs,presidentMilaDe: "Faena Hotel Miami Beach".obs,fortyEight: "4.9".obs,parisFrance: "Paris, France".obs,price: "38".obs,night: "/ night".obs),MybookmarksItemModel(image:ImageConstant.imgRectangle42.obs,presidentMilaDe: "Palazzo Versace\nPico Hotel".obs,fortyEight: "4.7".obs,parisFrance: "Paris, France".obs,price: "36".obs,night: "/ night".obs)]);

 }
