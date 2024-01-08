import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:the_6_12_street_style___e_commerce_app/presentation/menu_screen/models/menu_model.dart';
part 'menu_state.dart';

final menuNotifier = StateNotifierProvider<MenuNotifier, MenuState>(
    (ref) => MenuNotifier(MenuState(menuModelObj: MenuModel())));

/// A notifier that manages the state of a Menu according to the event that is dispatched to it.
class MenuNotifier extends StateNotifier<MenuState> {
  MenuNotifier(MenuState state) : super(state);
}
