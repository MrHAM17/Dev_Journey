import '../credit_card_and_debit_screen/widgets/cards_item_widget.dart';import 'models/cards_item_model.dart';import 'models/credit_card_and_debit_model.dart';import 'package:flutter/material.dart';import 'package:the_5_01_e_commerce/core/app_export.dart';import 'package:the_5_01_e_commerce/widgets/app_bar/appbar_leading_image.dart';import 'package:the_5_01_e_commerce/widgets/app_bar/appbar_subtitle.dart';import 'package:the_5_01_e_commerce/widgets/app_bar/custom_app_bar.dart';import 'package:the_5_01_e_commerce/widgets/custom_elevated_button.dart';import 'provider/credit_card_and_debit_provider.dart';class CreditCardAndDebitScreen extends StatefulWidget {const CreditCardAndDebitScreen({Key? key}) : super(key: key);

@override CreditCardAndDebitScreenState createState() =>  CreditCardAndDebitScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => CreditCardAndDebitProvider(), child: CreditCardAndDebitScreen()); } 
 }
class CreditCardAndDebitScreenState extends State<CreditCardAndDebitScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(vertical: 9.v), child: Column(children: [SizedBox(height: 8.v), _buildCards(context), Spacer()])), bottomNavigationBar: _buildAddCard(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 40.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 16.h, top: 16.v, bottom: 15.v), onTap: () {onTapArrowLeft(context);}), title: AppbarSubtitle(text: "msg_credit_card_and".tr, margin: EdgeInsets.only(left: 12.h))); } 
/// Section Widget
Widget _buildCards(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 16.h), child: Consumer<CreditCardAndDebitProvider>(builder: (context, provider, child) {return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 14.v);}, itemCount: provider.creditCardAndDebitModelObj.cardsItemList.length, itemBuilder: (context, index) {CardsItemModel model = provider.creditCardAndDebitModelObj.cardsItemList[index]; return CardsItemWidget(model, onTapCreditCardItem: () {onTapCreditCardItem(context);});});})); } 
/// Section Widget
Widget _buildAddCard(BuildContext context) { return CustomElevatedButton(text: "lbl_add_card".tr, margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 50.v), onPressed: () {onTapAddCard(context);}); } 
/// Navigates to the lailyfaFebrinaCardScreen when the action is triggered.
onTapCreditCardItem(BuildContext context) { NavigatorService.pushNamed(AppRoutes.lailyfaFebrinaCardScreen); } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
/// Navigates to the addCardScreen when the action is triggered.
onTapAddCard(BuildContext context) { NavigatorService.pushNamed(AppRoutes.addCardScreen, ); } 
 }
