import '../../../core/app_export.dart';import 'soundused_item_model.dart';/// This class defines the variables used in the [sound_used_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SoundUsedModel {Rx<List<SoundusedItemModel>> soundusedItemList = Rx([SoundusedItemModel(image:ImageConstant.imgImage200x121.obs),SoundusedItemModel(image:ImageConstant.imgImage200x120.obs),SoundusedItemModel(image:ImageConstant.imgImage1.obs),SoundusedItemModel(image:ImageConstant.imgImage2.obs),SoundusedItemModel(image:ImageConstant.imgImage3.obs),SoundusedItemModel(image:ImageConstant.imgImage4.obs)]);

 }
