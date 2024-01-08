import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/transfertabcontainer_item_model.dart';
import 'package:the_6_15_safebank___mobile_banking_app/presentation/transfer_tab_container_screen/models/transfer_tab_container_model.dart';
part 'transfer_tab_container_state.dart';

final transferTabContainerNotifier = StateNotifierProvider<
        TransferTabContainerNotifier, TransferTabContainerState>(
    (ref) => TransferTabContainerNotifier(TransferTabContainerState(
            transferTabContainerModelObj:
                TransferTabContainerModel(transfertabcontainerItemList: [
          TransfertabcontainerItemModel(ellipse: ImageConstant.imgEllipse309),
          TransfertabcontainerItemModel(ellipse: ImageConstant.imgEllipse310),
          TransfertabcontainerItemModel(ellipse: ImageConstant.imgEllipse313),
          TransfertabcontainerItemModel(ellipse: ImageConstant.imgEllipse312),
          TransfertabcontainerItemModel(ellipse: ImageConstant.imgEllipse311)
        ]))));

/// A notifier that manages the state of a TransferTabContainer according to the event that is dispatched to it.
class TransferTabContainerNotifier
    extends StateNotifier<TransferTabContainerState> {
  TransferTabContainerNotifier(TransferTabContainerState state) : super(state);
}
