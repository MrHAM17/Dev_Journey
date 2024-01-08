import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/frame2_item_model.dart';import 'package:the_6_18_tune_cast___music_streaming__podcast_app/presentation/my_library_page/models/my_library_model.dart';part 'my_library_state.dart';final myLibraryNotifier = StateNotifierProvider<MyLibraryNotifier, MyLibraryState>((ref) => MyLibraryNotifier(MyLibraryState(myLibraryModelObj: MyLibraryModel(frame2ItemList: [Frame2ItemModel(theJordanHarb: ImageConstant.imgImage31, billSullivan: "The Jordan Harb..."), Frame2ItemModel(theJordanHarb: ImageConstant.imgImage32, billSullivan: "Apple Talk"), Frame2ItemModel(theJordanHarb: ImageConstant.imgImage33, billSullivan: "Dr. Death")]))));
/// A notifier that manages the state of a MyLibrary according to the event that is dispatched to it.
class MyLibraryNotifier extends StateNotifier<MyLibraryState> {MyLibraryNotifier(MyLibraryState state) : super(state);

 }
