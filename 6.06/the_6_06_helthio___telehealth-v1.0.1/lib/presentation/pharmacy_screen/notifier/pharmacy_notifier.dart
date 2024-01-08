import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/popularproduct_item_model.dart';
import '../models/productonsale_item_model.dart';
import 'package:the_6_06_helthio___telehealth/presentation/pharmacy_screen/models/pharmacy_model.dart';
part 'pharmacy_state.dart';

final pharmacyNotifier = StateNotifierProvider<PharmacyNotifier, PharmacyState>(
    (ref) => PharmacyNotifier(PharmacyState(
        searchController: TextEditingController(),
        pharmacyModelObj: PharmacyModel(popularproductItemList: [
          PopularproductItemModel(
              panadol: ImageConstant.imgEf58faa9a71e47e,
              panadol1: "Panadol",
              pcs: "20pcs",
              price: "15.99",
              close: ImageConstant.imgCloseWhiteA700),
          PopularproductItemModel(
              panadol1: "Bodrex Herbal",
              pcs: "100ml",
              price: "7.99",
              close: ImageConstant.imgCloseWhiteA700),
          PopularproductItemModel(
              panadol1: "Konidin", pcs: "3pcs", price: "5.99")
        ], productonsaleItemList: [
          ProductonsaleItemModel(
              oBHCombi: ImageConstant.imgCalciumLLysin,
              oBHCombi1: "OBH Combi",
              measurement: "75ml",
              price: "9.99",
              price1: "10.99",
              close: ImageConstant.imgCloseWhiteA700),
          ProductonsaleItemModel(
              oBHCombi1: "Betadine",
              measurement: "50ml",
              close: ImageConstant.imgCloseWhiteA700)
        ]))));

/// A notifier that manages the state of a Pharmacy according to the event that is dispatched to it.
class PharmacyNotifier extends StateNotifier<PharmacyState> {
  PharmacyNotifier(PharmacyState state) : super(state);
}
