import 'models/payment_empty_model.dart';import 'package:flutter/material.dart';import 'package:the_5_17_housit___buyrentsell_property/core/app_export.dart';import 'package:the_5_17_housit___buyrentsell_property/widgets/custom_elevated_button.dart';import 'provider/payment_empty_provider.dart';class PaymentEmptyPage extends StatefulWidget {const PaymentEmptyPage({Key? key}) : super(key: key);

@override PaymentEmptyPageState createState() =>  PaymentEmptyPageState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => PaymentEmptyProvider(), child: PaymentEmptyPage()); } 
 }
class PaymentEmptyPageState extends State<PaymentEmptyPage> with  AutomaticKeepAliveClientMixin<PaymentEmptyPage> {@override bool get wantKeepAlive =>  true;

@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: Container(width: double.maxFinite, decoration: AppDecoration.white, child: Column(children: [SizedBox(height: 167.v), Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Column(children: [CustomImageView(imagePath: ImageConstant.imageNotFound, height: 1.v, width: 100.h), SizedBox(height: 10.v), CustomElevatedButton(text: "lbl_next".tr, onPressed: () {onTapNext(context);})]))])))); } 

onTapNext(BuildContext context) { // TODO: implement Actions
 } 
 }
