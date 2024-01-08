import 'controller/splash_controller.dart';import 'package:flutter/material.dart';import 'package:the_4_17_housit___buyrentsell_property/core/app_export.dart';class SplashScreen extends GetWidget<SplashController> {const SplashScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(extendBody: true, extendBodyBehindAppBar: true, body: Container(width: SizeUtils.width, height: SizeUtils.height, decoration: BoxDecoration(image: DecorationImage(image: AssetImage(ImageConstant.imgSplashScreen), fit: BoxFit.cover)), child: SizedBox(width: double.maxFinite, child: CustomImageView(imagePath: ImageConstant.imgVectorGray100, height: 100.v, width: 136.h, alignment: Alignment.center))))); } 
 }
