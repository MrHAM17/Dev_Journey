import 'package:flutter/material.dart';import 'package:the_7_17_housit___buyrentsell_property/core/app_export.dart';import 'package:the_7_17_housit___buyrentsell_property/widgets/custom_elevated_button.dart';class PaymentEmptyPage extends StatefulWidget {const PaymentEmptyPage({Key? key}) : super(key: key);

@override PaymentEmptyPageState createState() =>  PaymentEmptyPageState();

 }
class PaymentEmptyPageState extends State<PaymentEmptyPage> with  AutomaticKeepAliveClientMixin<PaymentEmptyPage> {@override bool get wantKeepAlive =>  true;

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: Container(width: double.maxFinite, decoration: AppDecoration.white, child: Column(children: [SizedBox(height: 167.v), Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Column(children: [CustomImageView(imagePath: ImageConstant.imageNotFound, height: 1.v, width: 100.h), SizedBox(height: 10.v), CustomElevatedButton(text: "Next", onPressed: () {onTapNext(context);})]))])))); } 

onTapNext(BuildContext context) { // TODO: implement Actions
 } 
 }
