import 'bloc/payment_mastercard_bloc.dart';import 'models/payment_mastercard_model.dart';import 'package:flutter/material.dart';import 'package:the_3_17_housit___buyrentsell_property/core/app_export.dart';import 'package:the_3_17_housit___buyrentsell_property/widgets/custom_elevated_button.dart';import 'package:the_3_17_housit___buyrentsell_property/widgets/custom_text_form_field.dart';class PaymentMastercardPage extends StatefulWidget {const PaymentMastercardPage({Key? key}) : super(key: key);

@override PaymentMastercardPageState createState() =>  PaymentMastercardPageState();

static Widget builder(BuildContext context) { return BlocProvider<PaymentMastercardBloc>(create: (context) => PaymentMastercardBloc(PaymentMastercardState(paymentMastercardModelObj: PaymentMastercardModel()))..add(PaymentMastercardInitialEvent()), child: PaymentMastercardPage()); } 
 }
class PaymentMastercardPageState extends State<PaymentMastercardPage> with  AutomaticKeepAliveClientMixin<PaymentMastercardPage> {@override bool get wantKeepAlive =>  true;

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: _buildScrollView(context))); } 
/// Section Widget
Widget _buildScrollView(BuildContext context) { return SingleChildScrollView(child: Column(children: [SizedBox(height: 20.v), Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Column(children: [BlocSelector<PaymentMastercardBloc, PaymentMastercardState, TextEditingController?>(selector: (state) => state.lockController, builder: (context, lockController) {return CustomTextFormField(controller: lockController, hintText: "msg_jonathan_anderson".tr, suffix: Container(margin: EdgeInsets.fromLTRB(30.h, 25.v, 16.h, 25.v), decoration: BoxDecoration(borderRadius: BorderRadius.vertical(bottom: Radius.circular(50.h))), child: CustomImageView(imagePath: ImageConstant.imgLockBlueGray80001, height: 20.adaptSize, width: 20.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 70.v));}), SizedBox(height: 15.v), Container(padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 25.v), decoration: AppDecoration.fillGray.copyWith(borderRadius: BorderRadiusStyle.circleBorder12), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 2.v), child: Text("msg_1222_3443_9881_1222".tr, style: theme.textTheme.titleSmall)), CustomImageView(imagePath: ImageConstant.imgThumbsUpBlueGray80001, height: 20.adaptSize, width: 20.adaptSize)])), SizedBox(height: 15.v), Row(mainAxisAlignment: MainAxisAlignment.center, children: [Expanded(child: GestureDetector(onTap: () {onTapFormDateFill(context);}, child: Container(margin: EdgeInsets.only(right: 5.h), padding: EdgeInsets.symmetric(vertical: 25.v), decoration: AppDecoration.fillGray.copyWith(borderRadius: BorderRadiusStyle.circleBorder12), child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [Padding(padding: EdgeInsets.only(top: 2.v), child: BlocSelector<PaymentMastercardBloc, PaymentMastercardState, String?>(selector: (state) => state.paymentMastercardModelObj!.date, builder: (context, date) {return Text(date ?? "", style: theme.textTheme.titleSmall);})), CustomImageView(imagePath: ImageConstant.imgCalendar, height: 20.adaptSize, width: 20.adaptSize)])))), Container(margin: EdgeInsets.only(left: 5.h), padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 25.v), decoration: AppDecoration.fillGray.copyWith(borderRadius: BorderRadiusStyle.circleBorder12), child: BlocSelector<PaymentMastercardBloc, PaymentMastercardState, TextEditingController?>(selector: (state) => state.cvvController, builder: (context, cvvController) {return CustomTextFormField(width: 59.h, controller: cvvController, hintText: "lbl_cvv".tr, hintStyle: CustomTextStyles.bodyMediumOnPrimaryContainer, textInputAction: TextInputAction.done, prefix: Container(margin: EdgeInsets.only(right: 10.h), child: CustomImageView(imagePath: ImageConstant.imgThumbsUpBlueGray80001, height: 20.adaptSize, width: 20.adaptSize)), prefixConstraints: BoxConstraints(maxHeight: 20.v), contentPadding: EdgeInsets.symmetric(vertical: 1.v));}))]), SizedBox(height: 30.v), CustomImageView(imagePath: ImageConstant.imageNotFound, height: 1.v, width: 100.h), SizedBox(height: 10.v), CustomElevatedButton(text: "lbl_next".tr, onPressed: () {onTapNext(context);})]))])); } 

/// Displays a date picker dialog and updates the selected date in the
/// current [paymentMastercardModelObj] object if the user selects a valid date.
///
/// This function returns a `Future` that completes with `void`.
Future<void> onTapFormDateFill(BuildContext context) async  { var initialState = BlocProvider.of<PaymentMastercardBloc>(context).state;DateTime? dateTime  = await showDatePicker(context: context, initialDate: DateTime.now() , firstDate: DateTime(1970) ,lastDate: DateTime(DateTime.now().year,DateTime.now().month,DateTime.now().day)); if (dateTime != null) {initialState.paymentMastercardModelObj?.selectedDate = dateTime;context.read<PaymentMastercardBloc>().add(ChangeDateEvent(date: dateTime.format(SHORT_DATE_WITH_FULL_YEAR)));} } 
/// Navigates to the userEmptyScreen when the action is triggered.
onTapNext(BuildContext context) { NavigatorService.pushNamed(AppRoutes.userEmptyScreen, ); } 
 }
