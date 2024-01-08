import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/drugs_item_model.dart';
import '../models/drugs1_item_model.dart';
import 'package:the_6_04_health_care/presentation/pharmacy_screen/models/pharmacy_model.dart';
part 'pharmacy_state.dart';

final pharmacyNotifier = StateNotifierProvider<PharmacyNotifier, PharmacyState>(
    (ref) => PharmacyNotifier(PharmacyState(
        searchController: TextEditingController(),
        pharmacyModelObj: PharmacyModel(drugsItemList: [
          DrugsItemModel(
              panadol: ImageConstant.imgDrugThumbnail,
              panadol1: "Panadol",
              quantiity: "20pcs",
              price: "15.99",
              facebook: ImageConstant.imgFacebookPrimary),
          DrugsItemModel(
              panadol: ImageConstant.imgDrugThumbnail50x50,
              panadol1: "Bodrex Herbal",
              quantiity: "100ml",
              price: "7.99",
              facebook: ImageConstant.imgFacebookPrimary),
          DrugsItemModel(
              panadol: ImageConstant.imgDrugThumbnail1,
              panadol1: "Konidin",
              quantiity: "3pcs",
              price: "5.99")
        ], drugs1ItemList: [
          Drugs1ItemModel(
              oBHCombi: ImageConstant.imgDrugThumbnail1,
              panadol: "OBH Combi",
              measurement: "75ml",
              price: "9.99",
              facebook: ImageConstant.imgFacebookPrimary),
          Drugs1ItemModel(
              oBHCombi: ImageConstant.imgDrugThumbnail2,
              panadol: "Betadine",
              measurement: "50ml",
              price: "6.99",
              facebook: ImageConstant.imgFacebookPrimary),
          Drugs1ItemModel(
              oBHCombi: ImageConstant.imgDrugThumbnail3,
              panadol: "Bodrexin",
              measurement: "50ml",
              price: "7.99")
        ]))));

/// A notifier that manages the state of a Pharmacy according to the event that is dispatched to it.
class PharmacyNotifier extends StateNotifier<PharmacyState> {
  PharmacyNotifier(PharmacyState state) : super(state);
}
