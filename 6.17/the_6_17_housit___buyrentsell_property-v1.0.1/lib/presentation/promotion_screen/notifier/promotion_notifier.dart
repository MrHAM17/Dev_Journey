import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_17_housit___buyrentsell_property/presentation/promotion_screen/models/promotion_model.dart';part 'promotion_state.dart';final promotionNotifier = StateNotifierProvider<PromotionNotifier, PromotionState>((ref) => PromotionNotifier(PromotionState(promotionModelObj: PromotionModel())));
/// A notifier that manages the state of a Promotion according to the event that is dispatched to it.
class PromotionNotifier extends StateNotifier<PromotionState> {PromotionNotifier(PromotionState state) : super(state);

 }
