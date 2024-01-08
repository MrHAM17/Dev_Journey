import '../../../core/app_export.dart';
import 'frame6_item_model.dart';
import 'frame7_item_model.dart';

/// This class defines the variables used in the [search_page],
/// and is typically used to hold data that is passed between different parts of the application.
class SearchModel {
  Rx<List<Frame6ItemModel>> frame6ItemList = Rx([
    Frame6ItemModel(unsplashQnUURoX: ImageConstant.imgUnsplashQnuUr0o5x8.obs),
    Frame6ItemModel(
        unsplashQnUURoX: ImageConstant.imgUnsplashQnuUr0o5x858x58.obs),
    Frame6ItemModel(unsplashQnUURoX: ImageConstant.imgUnsplashQnuUr0o5x81.obs),
    Frame6ItemModel(unsplashQnUURoX: ImageConstant.imgUnsplashQnuUr0o5x82.obs),
    Frame6ItemModel(unsplashQnUURoX: ImageConstant.imgUnsplashQnuUr0o5x83.obs)
  ]);

  Rx<List<Frame7ItemModel>> frame7ItemList = Rx([
    Frame7ItemModel(
        premiumWatch: ImageConstant.imgUnsplashJj0tls2rod4.obs,
        premiumWatch1: "Premium Watch".obs),
    Frame7ItemModel(
        premiumWatch: ImageConstant.imgUnsplashJj0tls2rod458x58.obs,
        premiumWatch1: "Blue shoes".obs),
    Frame7ItemModel(
        premiumWatch: ImageConstant.imgUnsplashJj0tls2rod41.obs,
        premiumWatch1: "Jamdan Dress".obs)
  ]);
}
