import '../../../core/app_export.dart';

/// This class is used in the [framethirtysix_item_widget] screen.
class FramethirtysixItemModel {
  FramethirtysixItemModel({
    this.loremIpsumIsA,
    this.id,
  }) {
    loremIpsumIsA = loremIpsumIsA ?? "Lorem Ipsum Dolor";
    id = id ?? "";
  }

  String? loremIpsumIsA;

  String? id;
}
