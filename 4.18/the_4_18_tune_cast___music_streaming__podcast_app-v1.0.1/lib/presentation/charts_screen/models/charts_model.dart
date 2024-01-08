import '../../../core/app_export.dart';import 'topalbumsglobal_item_model.dart';import 'topalbumsglobal1_item_model.dart';/// This class defines the variables used in the [charts_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ChartsModel {Rx<List<TopalbumsglobalItemModel>> topalbumsglobalItemList = Rx([TopalbumsglobalItemModel(price: "TOP\nALBUMS\nGLOBAL".obs,loremIpsumDolor: "Top Albums Global".obs),TopalbumsglobalItemModel(price: "TOP\nALBUMS\nGLOBAL".obs,loremIpsumDolor: "Top Albums United..".obs)]);

Rx<List<Topalbumsglobal1ItemModel>> topalbumsglobal1ItemList = Rx([Topalbumsglobal1ItemModel(price: "TOP\nALBUMS\nGLOBAL".obs,loremIpsumDolor: "Top Albums Global".obs),Topalbumsglobal1ItemModel(price: "TOP\nALBUMS\nGLOBAL".obs,loremIpsumDolor: "Top Albums United..".obs)]);

 }
