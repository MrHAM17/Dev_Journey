import '../../../core/app_export.dart';
import 'frame2_item_model.dart';
import 'frame3_item_model.dart';

/// This class defines the variables used in the [home_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeModel {
  Rx<List<Frame2ItemModel>> frame2ItemList = Rx([
    Frame2ItemModel(
        casualJeansShoes: ImageConstant.imgUnsplashEmlkhdeydhg.obs,
        casualJeansShoes1: "Casual Jeans Shoes".obs),
    Frame2ItemModel(
        casualJeansShoes: ImageConstant.imgUnsplashEmlkhdeydhg235x164.obs,
        casualJeansShoes1: "Casual Jeans Shoes".obs),
    Frame2ItemModel(
        casualJeansShoes: ImageConstant.imgUnsplashEmlkhdeydhg1.obs,
        casualJeansShoes1: "Casual Jeans Shoes".obs)
  ]);

  Rx<List<Frame3ItemModel>> frame3ItemList = Rx([
    Frame3ItemModel(
        blackJacket: ImageConstant.imgUnsplashEmlkhdeydhg2.obs,
        casualJeansShoes: "Black Jacket".obs),
    Frame3ItemModel(
        blackJacket: ImageConstant.imgUnsplashEmlkhdeydhg3.obs,
        casualJeansShoes: "Casual Jeans Shoes".obs),
    Frame3ItemModel(
        blackJacket: ImageConstant.imgUnsplashEmlkhdeydhg2.obs,
        casualJeansShoes: "Black Jacket".obs)
  ]);
}
