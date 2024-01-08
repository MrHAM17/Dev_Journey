import '../summary_change_payment_bottomsheet/widgets/layout1_item_widget.dart';import 'models/layout1_item_model.dart';import 'notifier/summary_change_payment_notifier.dart';import 'package:flutter/material.dart';import 'package:the_6_17_housit___buyrentsell_property/core/app_export.dart';import 'package:the_6_17_housit___buyrentsell_property/widgets/custom_elevated_button.dart';import 'package:the_6_17_housit___buyrentsell_property/presentation/summary_success_bottomsheet/summary_success_bottomsheet.dart';class SummaryChangePaymentBottomsheet extends ConsumerStatefulWidget {const SummaryChangePaymentBottomsheet({Key? key}) : super(key: key);

@override SummaryChangePaymentBottomsheetState createState() =>  SummaryChangePaymentBottomsheetState();

 }
class SummaryChangePaymentBottomsheetState extends ConsumerState<SummaryChangePaymentBottomsheet> {@override Widget build(BuildContext context) { return Container(width: double.maxFinite, padding: EdgeInsets.symmetric(vertical: 24.v), decoration: AppDecoration.white.copyWith(borderRadius: BorderRadiusStyle.circleBorder50), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 3.v), SizedBox(width: 60.h, child: Divider()), SizedBox(height: 36.v), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 24.h), child: Text("lbl_change_payment".tr, style: CustomTextStyles.titleMediumBold))), SizedBox(height: 14.v), _buildLayout(context), SizedBox(height: 50.v), CustomElevatedButton(text: "lbl_select_payment".tr, margin: EdgeInsets.symmetric(horizontal: 24.h), onPressed: () {onTapSelectPayment(context);})])); } 
/// Section Widget
Widget _buildLayout(BuildContext context) { return Align(alignment: Alignment.centerRight, child: SizedBox(height: 180.v, child: Consumer(builder: (context, ref, _) {return ListView.separated(padding: EdgeInsets.only(left: 24.h), scrollDirection: Axis.horizontal, separatorBuilder: (context, index) {return SizedBox(width: 10.h);}, itemCount: ref.watch(summaryChangePaymentNotifier).summaryChangePaymentModelObj?.layout1ItemList.length ?? 0, itemBuilder: (context, index) {Layout1ItemModel model = ref.watch(summaryChangePaymentNotifier).summaryChangePaymentModelObj?.layout1ItemList[index] ?? Layout1ItemModel(); return Layout1ItemWidget(model);});}))); } 

/// Shows a modal bottom sheet with [SummarySuccessBottomsheet] 
/// widget content.
/// The sheet is displayed on top of the current view with scrolling enabled if 
/// content exceeds viewport height.
onTapSelectPayment(BuildContext context) { showModalBottomSheet(context: context, builder: (_)=>SummarySuccessBottomsheet(),isScrollControlled: true); } 
 }
