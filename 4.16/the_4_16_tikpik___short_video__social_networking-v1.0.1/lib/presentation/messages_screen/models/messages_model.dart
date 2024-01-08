import '../../../core/app_export.dart';import 'autolayouthorizontal7_item_model.dart';import 'theresavarnes_item_model.dart';/// This class defines the variables used in the [messages_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MessagesModel {Rx<List<Autolayouthorizontal7ItemModel>> autolayouthorizontal7ItemList = Rx([Autolayouthorizontal7ItemModel(aubrey:ImageConstant.imgEllipse80x80.obs,name: "Aubrey".obs),Autolayouthorizontal7ItemModel(aubrey:ImageConstant.imgEllipse23.obs,name: "Darrell".obs),Autolayouthorizontal7ItemModel(aubrey:ImageConstant.imgEllipse24.obs,name: "Julie".obs),Autolayouthorizontal7ItemModel(aubrey:ImageConstant.imgEllipse25.obs,name: "Kristin".obs),Autolayouthorizontal7ItemModel(aubrey:ImageConstant.imgEllipse26.obs,name: "Brandie".obs)]);

Rx<List<TheresavarnesItemModel>> theresavarnesItemList = Rx([TheresavarnesItemModel(theresaVarnes:ImageConstant.imgEllipse4.obs,name: "Theresa Varnes".obs,message: "Hi, morning too Andrew!".obs,autoLayoutHorizontal: "1".obs,twoThousand: "10.00".obs)]);

 }
