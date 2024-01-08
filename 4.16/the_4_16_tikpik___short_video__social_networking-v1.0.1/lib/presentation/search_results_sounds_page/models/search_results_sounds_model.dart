import '../../../core/app_export.dart';import 'searchresultssounds_item_model.dart';/// This class defines the variables used in the [search_results_sounds_page],
/// and is typically used to hold data that is passed between different parts of the application.
class SearchResultsSoundsModel {Rx<List<SearchresultssoundsItemModel>> searchresultssoundsItemList = Rx([SearchresultssoundsItemModel(k:ImageConstant.imgImage80x80.obs,soundsTitle: "Side to Side".obs,singer: "Ariana Grande".obs,time: "01:00".obs,total: "938.6K".obs),SearchresultssoundsItemModel(k:ImageConstant.imgImage15.obs,soundsTitle: "7 Rings".obs,singer: "Ariana Grande".obs,time: "00:50".obs,total: "762.5K".obs)]);

 }
