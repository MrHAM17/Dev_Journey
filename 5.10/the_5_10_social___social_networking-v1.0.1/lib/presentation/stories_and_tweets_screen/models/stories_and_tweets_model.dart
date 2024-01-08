import '../../../core/app_export.dart';
import 'live_item_model.dart';
import 'frame1_item_model.dart';

class StoriesAndTweetsModel {
  List<LiveItemModel> liveItemList = [
    LiveItemModel(save: ImageConstant.imgSave, newPost: "New Post"),
    LiveItemModel(newPost: "Jordan"),
    LiveItemModel(newPost: "Angeline"),
    LiveItemModel(newPost: "Chrystin"),
    LiveItemModel(newPost: "Vrindha")
  ];

  List<Frame1ItemModel> frame1ItemList = [
    Frame1ItemModel(
        albertOConnor: "Albert O’connor",
        duration: "4  hours ago",
        introduceIAmA:
            "Introduce I am a photographer who travels around the world everyday, these are some of my works as a photographer.",
        zipcode: "2200",
        eightHundred: "800",
        albertOConnor1: "Albert O’connor",
        duration1: "4  hours ago",
        introduceIAmA1:
            "Introduce I am a photographer who travels around the world everyday, these are some of my works as a photographer.")
  ];
}
