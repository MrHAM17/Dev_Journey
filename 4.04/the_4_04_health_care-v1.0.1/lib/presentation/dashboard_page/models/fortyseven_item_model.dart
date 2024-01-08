import '../../../core/app_export.dart';

/// This class is used in the [fortyseven_item_widget] screen.
class FortysevenItemModel {
  FortysevenItemModel({
    this.ticket,
    this.id,
  }) {
    ticket = ticket ?? Rx(ImageConstant.imgTicket);
    id = id ?? Rx("");
  }

  Rx<String>? ticket;

  Rx<String>? id;
}
