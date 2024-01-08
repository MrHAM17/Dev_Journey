import '../../../core/app_export.dart';
import 'eightythree_item_model.dart';
import 'follow_item_model.dart';

class FriendsModel {
  List<EightythreeItemModel> eightythreeItemList = [
    EightythreeItemModel(trash: ImageConstant.imgTrashBlue500),
    EightythreeItemModel(trash: ImageConstant.imgFacebookBlueA400),
    EightythreeItemModel(trash: ImageConstant.imgThumbsUp)
  ];

  List<FollowItemModel> followItemList = [
    FollowItemModel(
        kevinAllsrub: ImageConstant.imgEllipse5,
        kevinAllsrub1: "Kevin Allsrub",
        yourEFriendsOn: "Your’e friends on twitter"),
    FollowItemModel(
        kevinAllsrub: ImageConstant.imgEllipse6,
        kevinAllsrub1: "Sarah Owen",
        yourEFriendsOn: "Your’e friends on twitter"),
    FollowItemModel(
        kevinAllsrub: ImageConstant.imgEllipse7,
        kevinAllsrub1: "Rick Onad",
        yourEFriendsOn: "Your’e friends on twitter"),
    FollowItemModel(
        kevinAllsrub: ImageConstant.imgEllipse8,
        kevinAllsrub1: "Steven Ford",
        yourEFriendsOn: "Your’e friends on twitter"),
    FollowItemModel(
        kevinAllsrub: ImageConstant.imgEllipse9,
        kevinAllsrub1: "Lucas Anna ",
        yourEFriendsOn: "Your’e friends on twitter"),
    FollowItemModel(
        kevinAllsrub: ImageConstant.imgEllipse10,
        kevinAllsrub1: "Nabila Remaar",
        yourEFriendsOn: "Your’e friends on twitter")
  ];
}
