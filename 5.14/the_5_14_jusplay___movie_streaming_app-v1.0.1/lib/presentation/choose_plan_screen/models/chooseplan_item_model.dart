import 'package:flutter/material.dart';
import '../../../core/app_export.dart';

/// This class is used in the [chooseplan_item_widget] screen.
class ChooseplanItemModel {
  ChooseplanItemModel({
    this.voucher,
    this.inputsFiedController,
    this.id,
  }) {
    voucher = voucher ?? "Voucher";
    inputsFiedController = inputsFiedController ?? TextEditingController();
    id = id ?? "";
  }

  String? voucher;

  TextEditingController? inputsFiedController;

  String? id;
}
