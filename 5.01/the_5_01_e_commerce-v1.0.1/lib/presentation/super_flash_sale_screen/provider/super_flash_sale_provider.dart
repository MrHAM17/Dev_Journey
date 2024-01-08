import 'package:flutter/material.dart';import 'package:the_5_01_e_commerce/core/app_export.dart';import 'package:the_5_01_e_commerce/presentation/super_flash_sale_screen/models/super_flash_sale_model.dart';import '../models/superflashsale_item_model.dart';/// A provider class for the SuperFlashSaleScreen.
///
/// This provider manages the state of the SuperFlashSaleScreen, including the
/// current superFlashSaleModelObj

// ignore_for_file: must_be_immutable
class SuperFlashSaleProvider extends ChangeNotifier {SuperFlashSaleModel superFlashSaleModelObj = SuperFlashSaleModel();

@override void dispose() { super.dispose(); } 
 }
