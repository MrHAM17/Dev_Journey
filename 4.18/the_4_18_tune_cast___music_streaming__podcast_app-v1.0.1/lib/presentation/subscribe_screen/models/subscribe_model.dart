import '../../../core/app_export.dart';import 'subscribe_item_model.dart';/// This class defines the variables used in the [subscribe_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SubscribeModel {Rx<List<SubscribeItemModel>> subscribeItemList = Rx([SubscribeItemModel(price: "9.99".obs,month: "/month".obs,listeningWithBetter: "Listening with better audio quality".obs,listeningWithout: "Listening without restrictions & ads".obs,shufflePlayDownload: "Shuffle play & download unlimited".obs),SubscribeItemModel(price: "19.99".obs,month: "/3 months".obs,listeningWithBetter: "Listening with better audio quality".obs,listeningWithout: "Listening without restrictions & ads".obs,shufflePlayDownload: "Shuffle play & download unlimited".obs)]);

 }
