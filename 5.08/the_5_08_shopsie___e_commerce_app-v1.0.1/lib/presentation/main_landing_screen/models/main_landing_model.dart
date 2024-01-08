import '../../../core/app_export.dart';
import 'frame_item_model.dart';
import 'thirtytwo_item_model.dart';
import 'mainlanding_item_model.dart';
import 'package:the_5_08_shopsie___e_commerce_app/data/models/selectionPopupModel/selection_popup_model.dart';
import 'price_item_model.dart';

class MainLandingModel {
  List<FrameItemModel> frameItemList = [
    FrameItemModel(
        oliveplaindress: ImageConstant.imgImage,
        womenBlueSkinny: "Olive plain dress",
        price: " 13.99"),
    FrameItemModel(
        oliveplaindress: ImageConstant.imgImage236x171,
        womenBlueSkinny: "Shoes on heels",
        price: " 28.99"),
    FrameItemModel(
        oliveplaindress: ImageConstant.imgImage,
        womenBlueSkinny: "Olive plain dress",
        price: " 20.99")
  ];

  List<ThirtytwoItemModel> thirtytwoItemList = [
    ThirtytwoItemModel(
        outerwear: ImageConstant.imgRectangle7,
        outerwear1: "Outerwear",
        raincoatsSweaters: "Raincoats, sweaters, etc."),
    ThirtytwoItemModel(
        outerwear: ImageConstant.imgRectangle7386x358,
        outerwear1: "Leather shoes",
        raincoatsSweaters: "Shoes, sandals, etc."),
    ThirtytwoItemModel(
        outerwear: ImageConstant.imgRectangle8,
        outerwear1: "Light dresses",
        raincoatsSweaters: "Evening, casual, home")
  ];

  List<MainlandingItemModel> mainlandingItemList = [
    MainlandingItemModel(image: ImageConstant.imgImage15),
    MainlandingItemModel(image: ImageConstant.imgImage16),
    MainlandingItemModel(image: ImageConstant.imgImage17),
    MainlandingItemModel(image: ImageConstant.imgImage18),
    MainlandingItemModel(image: ImageConstant.imgImage19),
    MainlandingItemModel(image: ImageConstant.imgImage20)
  ];

  List<SelectionPopupModel> dropdownItemList = [
    SelectionPopupModel(
      id: 1,
      title: "Item One",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Item Two",
    ),
    SelectionPopupModel(
      id: 3,
      title: "Item Three",
    )
  ];

  List<SelectionPopupModel> dropdownItemList1 = [
    SelectionPopupModel(
      id: 1,
      title: "Item One",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Item Two",
    ),
    SelectionPopupModel(
      id: 3,
      title: "Item Three",
    )
  ];

  List<SelectionPopupModel> dropdownItemList2 = [
    SelectionPopupModel(
      id: 1,
      title: "Item One",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Item Two",
    ),
    SelectionPopupModel(
      id: 3,
      title: "Item Three",
    )
  ];

  List<PriceItemModel> priceItemList = [
    PriceItemModel(
        circleImage: ImageConstant.imgImage56x56,
        price: "43.90",
        cottonBlackDress: "Cotton black dress"),
    PriceItemModel(
        circleImage: ImageConstant.imgImage1,
        price: "12.50",
        cottonBlackDress: "Saddle shoulder bag with hardware "),
    PriceItemModel(
        circleImage: ImageConstant.imgImage2,
        price: "99.30",
        cottonBlackDress: "Leather shoes")
  ];
}
