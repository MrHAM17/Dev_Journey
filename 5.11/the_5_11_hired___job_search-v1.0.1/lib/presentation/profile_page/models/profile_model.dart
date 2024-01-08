import 'fortyseven_item_model.dart';
import '../../../core/app_export.dart';
import 'profile_item_model.dart';

class ProfileModel {
  List<FortysevenItemModel> fortysevenItemList =
      List.generate(8, (index) => FortysevenItemModel());

  List<ProfileItemModel> profileItemList = [
    ProfileItemModel(
        image: ImageConstant.imgLogoDeepOrange700,
        bag: ImageConstant.imgBag,
        internshipUIUX: "Internship UI/UX Designer",
        smallLabelRegular: "Shopee Sg",
        smallLabelRegular1: "•",
        zipcode: "2019")
  ];
}
