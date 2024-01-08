import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/selectvirtualapp_item_model.dart';import 'package:the_6_21_vertex___real_estate_app/presentation/select_virtual_app_screen/models/select_virtual_app_model.dart';part 'select_virtual_app_state.dart';final selectVirtualAppNotifier = StateNotifierProvider<SelectVirtualAppNotifier, SelectVirtualAppState>((ref) => SelectVirtualAppNotifier(SelectVirtualAppState(selectVirtualAppModelObj: SelectVirtualAppModel(selectvirtualappItemList: [SelectvirtualappItemModel(whatsapp: ImageConstant.imgWhatsapp, whatsapp1: "Whatsapp", recommend: "Recommend", check: ImageConstant.imgCheck)]))));
/// A notifier that manages the state of a SelectVirtualApp according to the event that is dispatched to it.
class SelectVirtualAppNotifier extends StateNotifier<SelectVirtualAppState> {SelectVirtualAppNotifier(SelectVirtualAppState state) : super(state);

 }
