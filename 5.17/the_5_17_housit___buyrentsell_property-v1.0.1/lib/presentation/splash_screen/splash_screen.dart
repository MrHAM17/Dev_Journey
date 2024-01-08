import 'models/splash_model.dart';import 'package:flutter/material.dart';import 'package:the_5_17_housit___buyrentsell_property/core/app_export.dart';import 'provider/splash_provider.dart';class SplashScreen extends StatefulWidget {const SplashScreen({Key? key}) : super(key: key);

@override SplashScreenState createState() =>  SplashScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => SplashProvider(), child: SplashScreen()); } 
 }
class SplashScreenState extends State<SplashScreen> {@override void initState() { super.initState();Future.delayed(const Duration(milliseconds: 3000), (){
NavigatorService.popAndPushNamed(AppRoutes.productTourOneScreen, );}); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(extendBody: true, extendBodyBehindAppBar: true, body: Container(width: SizeUtils.width, height: SizeUtils.height, decoration: BoxDecoration(image: DecorationImage(image: AssetImage(ImageConstant.imgSplashScreen), fit: BoxFit.cover)), child: SizedBox(width: double.maxFinite, child: CustomImageView(imagePath: ImageConstant.imgVectorGray100, height: 100.v, width: 136.h, alignment: Alignment.center))))); } 
 }
