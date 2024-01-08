import 'bloc/create_new_pin_bloc.dart';import 'models/create_new_pin_model.dart';import 'package:flutter/material.dart';import 'package:the_3_16_tikpik___short_video__social_networking/core/app_export.dart';import 'package:the_3_16_tikpik___short_video__social_networking/widgets/custom_elevated_button.dart';class CreateNewPinPage extends StatefulWidget {const CreateNewPinPage({Key? key}) : super(key: key);

@override CreateNewPinPageState createState() =>  CreateNewPinPageState();

static Widget builder(BuildContext context) { return BlocProvider<CreateNewPinBloc>(create: (context) => CreateNewPinBloc(CreateNewPinState(createNewPinModelObj: CreateNewPinModel()))..add(CreateNewPinInitialEvent()), child: CreateNewPinPage()); } 
 }
class CreateNewPinPageState extends State<CreateNewPinPage> with  AutomaticKeepAliveClientMixin<CreateNewPinPage> {@override bool get wantKeepAlive =>  true;

@override Widget build(BuildContext context) { return BlocBuilder<CreateNewPinBloc, CreateNewPinState>(builder: (context, state) {return SafeArea(child: Scaffold(body: Container(width: double.maxFinite, decoration: AppDecoration.fillOnErrorContainer, child: Column(children: [SizedBox(height: 116.v), CustomElevatedButton(width: 380.h, text: "lbl_continue".tr, margin: EdgeInsets.symmetric(horizontal: 24.h), buttonStyle: CustomButtonStyles.fillPrimary, buttonTextStyle: CustomTextStyles.titleMediumOnErrorContainer16, onPressed: () {onTapContinue(context);})]))));}); } 
/// Navigates to the setYourFingerprintScreen when the action is triggered.
onTapContinue(BuildContext context) { NavigatorService.pushNamed(AppRoutes.setYourFingerprintScreen, ); } 
 }
