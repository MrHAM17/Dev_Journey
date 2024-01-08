import '../summary_change_payment_bottomsheet/widgets/layout1_item_widget.dart';import 'models/layout1_item_model.dart';import 'models/summary_change_payment_model.dart';import 'package:flutter/material.dart';import 'package:the_5_17_housit___buyrentsell_property/core/app_export.dart';import 'package:the_5_17_housit___buyrentsell_property/widgets/custom_elevated_button.dart';import 'provider/summary_change_payment_provider.dart';import 'package:the_5_17_housit___buyrentsell_property/presentation/summary_success_bottomsheet/summary_success_bottomsheet.dart';class SummaryChangePaymentBottomsheet extends StatefulWidget {const SummaryChangePaymentBottomsheet({Key? key}) : super(key: key);

@override SummaryChangePaymentBottomsheetState createState() =>  SummaryChangePaymentBottomsheetState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => SummaryChangePaymentProvider(), child: SummaryChangePaymentBottomsheet()); } 
 }
class SummaryChangePaymentBottomsheetState extends State<SummaryChangePaymentBottomsheet> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return Container(width: double.maxFinite, padding: EdgeInsets.symmetric(vertical: 24.v), decoration: AppDecoration.white.copyWith(borderRadius: BorderRadiusStyle.circleBorder50), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 3.v), SizedBox(width: 60.h, child: Divider()), SizedBox(height: 36.v), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 24.h), child: Text("lbl_change_payment".tr, style: CustomTextStyles.titleMediumBold))), SizedBox(height: 14.v), _buildLayout(context), SizedBox(height: 50.v), CustomElevatedButton(text: "lbl_select_payment".tr, margin: EdgeInsets.symmetric(horizontal: 24.h), onPressed: () {onTapSelectPayment(context);})])); } 
/// Section Widget
Widget _buildLayout(BuildContext context) { return Align(alignment: Alignment.centerRight, child: SizedBox(height: 180.v, child: Consumer<SummaryChangePaymentProvider>(builder: (context, provider, child) {return ListView.separated(padding: EdgeInsets.only(left: 24.h), scrollDirection: Axis.horizontal, separatorBuilder: (context, index) {return SizedBox(width: 10.h);}, itemCount: provider.summaryChangePaymentModelObj.layout1ItemList.length, itemBuilder: (context, index) {Layout1ItemModel model = provider.summaryChangePaymentModelObj.layout1ItemList[index]; return Layout1ItemWidget(model);});}))); } 

/// Displays a bottom sheet widget using the [showModalBottomSheet] method 
/// of the [Scaffold] class with [isScrollControlled] set to true.
///
/// The bottom sheet is built using the [SummarySuccessBottomsheet]
/// class and the [builder] method of the bottom sheet is passed the
/// [BuildContext] object.
onTapSelectPayment(BuildContext context) { showModalBottomSheet(context: context, builder: (_)=>SummarySuccessBottomsheet.builder(context),isScrollControlled: true); } 
 }
