import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:the_6_17_housit___buyrentsell_property/presentation/review_select_voucher_bottomsheet/models/review_select_voucher_model.dart';part 'review_select_voucher_state.dart';final reviewSelectVoucherNotifier = StateNotifierProvider<ReviewSelectVoucherNotifier, ReviewSelectVoucherState>((ref) => ReviewSelectVoucherNotifier(ReviewSelectVoucherState(televisionController: TextEditingController(), reviewSelectVoucherModelObj: ReviewSelectVoucherModel())));
/// A notifier that manages the state of a ReviewSelectVoucher according to the event that is dispatched to it.
class ReviewSelectVoucherNotifier extends StateNotifier<ReviewSelectVoucherState> {ReviewSelectVoucherNotifier(ReviewSelectVoucherState state) : super(state);

 }
