import 'bloc/splash_bloc.dart';import 'models/splash_model.dart';import 'package:flutter/material.dart';import 'package:the_3_21_vertex___real_estate_app/core/app_export.dart';class SplashScreen extends StatelessWidget {const SplashScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<SplashBloc>(create: (context) => SplashBloc(SplashState(splashModelObj: SplashModel()))..add(SplashInitialEvent()), child: SplashScreen()); } 
@override Widget build(BuildContext context) { return BlocBuilder<SplashBloc, SplashState>(builder: (context, state) {return SafeArea(child: Scaffold(backgroundColor: appTheme.gray900, body: SizedBox(width: double.maxFinite, child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 1.v), CustomImageView(imagePath: ImageConstant.imgTelevision, height: 99.v, width: 90.h)]))));}); } 
 }
