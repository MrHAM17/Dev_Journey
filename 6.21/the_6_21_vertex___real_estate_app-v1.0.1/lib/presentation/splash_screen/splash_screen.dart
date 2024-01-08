import 'notifier/splash_notifier.dart';import 'package:flutter/material.dart';import 'package:the_6_21_vertex___real_estate_app/core/app_export.dart';class SplashScreen extends ConsumerStatefulWidget {const SplashScreen({Key? key}) : super(key: key);

@override SplashScreenState createState() =>  SplashScreenState();

 }
class SplashScreenState extends ConsumerState<SplashScreen> {@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: appTheme.gray900, body: SizedBox(width: double.maxFinite, child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 1.v), CustomImageView(imagePath: ImageConstant.imgTelevision, height: 99.v, width: 90.h)])))); } 
 }
