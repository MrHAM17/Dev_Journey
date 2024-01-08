import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/transferrequest_item_model.dart';
import 'package:the_6_15_safebank___mobile_banking_app/presentation/transfer_request_screen/models/transfer_request_model.dart';
part 'transfer_request_state.dart';

final transferRequestNotifier = StateNotifierProvider<
        TransferRequestNotifier, TransferRequestState>(
    (ref) => TransferRequestNotifier(TransferRequestState(
        searchController: TextEditingController(),
        transferRequestModelObj: TransferRequestModel(transferrequestItemList: [
          TransferrequestItemModel(
              zanderWiza: ImageConstant.imgRectangle63,
              zanderWiza1: "Zander Wiza",
              uIUXDesigner: "UI/UX Designer"),
          TransferrequestItemModel(
              zanderWiza: ImageConstant.imgRectangle64,
              zanderWiza1: "Devon Jerde",
              uIUXDesigner: "Product Designer"),
          TransferrequestItemModel(
              zanderWiza: ImageConstant.imgRectangle65,
              zanderWiza1: "Alvis Blick",
              uIUXDesigner: "Graphic Designer"),
          TransferrequestItemModel(
              zanderWiza: ImageConstant.imgRectangle66,
              zanderWiza1: "Kira Kulas",
              uIUXDesigner: "Graphic Designer"),
          TransferrequestItemModel(
              zanderWiza: ImageConstant.imgRectangle67,
              zanderWiza1: "Mara Wilkinson",
              uIUXDesigner: "Project Manager")
        ]))));

/// A notifier that manages the state of a TransferRequest according to the event that is dispatched to it.
class TransferRequestNotifier extends StateNotifier<TransferRequestState> {
  TransferRequestNotifier(TransferRequestState state) : super(state);
}
