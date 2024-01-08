import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_21_vertex___real_estate_app/presentation/my_home_empty_screen/models/my_home_empty_model.dart';part 'my_home_empty_state.dart';final myHomeEmptyNotifier = StateNotifierProvider<MyHomeEmptyNotifier, MyHomeEmptyState>((ref) => MyHomeEmptyNotifier(MyHomeEmptyState(myHomeEmptyModelObj: MyHomeEmptyModel())));
/// A notifier that manages the state of a MyHomeEmpty according to the event that is dispatched to it.
class MyHomeEmptyNotifier extends StateNotifier<MyHomeEmptyState> {MyHomeEmptyNotifier(MyHomeEmptyState state) : super(state);

 }
