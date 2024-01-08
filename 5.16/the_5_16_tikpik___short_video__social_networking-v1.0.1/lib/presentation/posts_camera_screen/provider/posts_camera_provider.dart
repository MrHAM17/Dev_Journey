import 'package:flutter/material.dart';import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_5_16_tikpik___short_video__social_networking/presentation/posts_camera_screen/models/posts_camera_model.dart';import '../models/autolayouthorizontal5_item_model.dart';/// A provider class for the PostsCameraScreen.
///
/// This provider manages the state of the PostsCameraScreen, including the
/// current postsCameraModelObj

// ignore_for_file: must_be_immutable
class PostsCameraProvider extends ChangeNotifier {PostsCameraModel postsCameraModelObj = PostsCameraModel();

@override void dispose() { super.dispose(); } 
void onSelectedChipView1(int index, bool value, ) { postsCameraModelObj.autolayouthorizontal5ItemList.forEach((element) {element.isSelected = false;}); postsCameraModelObj.autolayouthorizontal5ItemList[index].isSelected = value; notifyListeners(); } 
 }
