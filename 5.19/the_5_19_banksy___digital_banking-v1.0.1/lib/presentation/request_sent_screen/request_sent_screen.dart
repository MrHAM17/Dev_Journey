import 'models/request_sent_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_19_banksy___digital_banking/core/app_export.dart';
import 'provider/request_sent_provider.dart';

class RequestSentScreen extends StatefulWidget {
  const RequestSentScreen({Key? key})
      : super(
          key: key,
        );

  @override
  RequestSentScreenState createState() => RequestSentScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => RequestSentProvider(),
      child: RequestSentScreen(),
    );
  }
}

class RequestSentScreenState extends State<RequestSentScreen> {
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
                width: 148.h,
                child: Text(
                  "msg_request_sent_successfully".tr,
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
