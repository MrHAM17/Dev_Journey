import 'trendingnow_item_model.dart';import '../../../core/app_export.dart';/// This class defines the variables used in the [home_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeModel {Rx<List<TrendingnowItemModel>> trendingnowItemList = Rx([TrendingnowItemModel(groupBy: "Trending Now".obs),TrendingnowItemModel(groupBy: "Trending Now".obs),TrendingnowItemModel(groupBy: "Trending Now".obs),TrendingnowItemModel(groupBy: "Popular Artists".obs),TrendingnowItemModel(groupBy: "Popular Artists".obs),TrendingnowItemModel(groupBy: "Popular Artists".obs),TrendingnowItemModel(groupBy: "Top Charts".obs),TrendingnowItemModel(groupBy: "Top Charts".obs),TrendingnowItemModel(groupBy: "Top Charts".obs)]);

 }
