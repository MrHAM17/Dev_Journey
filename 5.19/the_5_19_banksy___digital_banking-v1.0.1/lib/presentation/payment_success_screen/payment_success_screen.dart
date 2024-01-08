import 'models/payment_success_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_19_banksy___digital_banking/core/app_export.dart';
import 'provider/payment_success_provider.dart';

class PaymentSuccessScreen extends StatefulWidget {
  const PaymentSuccessScreen({Key? key})
      : super(
          key: key,
        );

  @override
  PaymentSuccessScreenState createState() => PaymentSuccessScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PaymentSuccessProvider(),
      child: PaymentSuccessScreen(),
    );
  }
}

class PaymentSuccessScreenState extends State<PaymentSuccessScreen> {
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
                width: 156.h,
                child: Text(
                  "msg_payment_sent_successfully".tr,
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
