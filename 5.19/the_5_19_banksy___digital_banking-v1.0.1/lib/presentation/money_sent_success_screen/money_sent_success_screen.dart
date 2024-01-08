import 'models/money_sent_success_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_19_banksy___digital_banking/core/app_export.dart';
import 'provider/money_sent_success_provider.dart';

class MoneySentSuccessScreen extends StatefulWidget {
  const MoneySentSuccessScreen({Key? key})
      : super(
          key: key,
        );

  @override
  MoneySentSuccessScreenState createState() => MoneySentSuccessScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MoneySentSuccessProvider(),
      child: MoneySentSuccessScreen(),
    );
  }
}

class MoneySentSuccessScreenState extends State<MoneySentSuccessScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 80.adaptSize,
                width: 80.adaptSize,
                padding: EdgeInsets.symmetric(
                  horizontal: 29.h,
                  vertical: 31.v,
                ),
                decoration: AppDecoration.white.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder42,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgCheckmarkGray500,
                  height: 16.v,
                  width: 22.h,
                  alignment: Alignment.center,
                ),
              ),
              SizedBox(height: 20.v),
              SizedBox(
                width: 142.h,
                child: Text(
                  "msg_money_sent_successfully".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.headlineSmall!.copyWith(
                    height: 1.50,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
