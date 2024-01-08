import '../../../core/app_export.dart';
import 'speciallization_item_model.dart';

/// This class defines the variables used in the [speciallization_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SpeciallizationModel {
  Rx<List<SpeciallizationItemModel>> speciallizationItemList = Rx([
    SpeciallizationItemModel(
        designCreative: ImageConstant.imgCheckmark.obs,
        designCreative1: "Design & Creative".obs),
    SpeciallizationItemModel(
        designCreative: ImageConstant.imgPlay.obs,
        designCreative1: "Development & IT".obs),
    SpeciallizationItemModel(
        designCreative: ImageConstant.imgPlay.obs,
        designCreative1: "Engineering & Architecture".obs),
    SpeciallizationItemModel(
        designCreative: ImageConstant.imgPlay.obs,
        designCreative1: "Sales & Marketing".obs),
    SpeciallizationItemModel(
        designCreative: ImageConstant.imgPlay.obs,
        designCreative1: "Writing".obs),
    SpeciallizationItemModel(
        designCreative: ImageConstant.imgPlay.obs,
        designCreative1: "Finance".obs)
  ]);
}
