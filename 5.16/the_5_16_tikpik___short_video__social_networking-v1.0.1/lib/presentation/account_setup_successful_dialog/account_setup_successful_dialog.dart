import 'models/account_setup_successful_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';
import 'provider/account_setup_successful_provider.dart';

// ignore_for_file: must_be_immutable
class AccountSetupSuccessfulDialog extends StatefulWidget {
  const AccountSetupSuccessfulDialog({Key? key})
      : super(
          key: key,
        );

  @override
  AccountSetupSuccessfulDialogState createState() =>
      AccountSetupSuccessfulDialogState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AccountSetupSuccessfulProvider(),
      child: AccountSetupSuccessfulDialog(),
    );
  }
}

class AccountSetupSuccessfulDialogState
    extends State<AccountSetupSuccessfulDialog> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340.h,
      padding: EdgeInsets.symmetric(
        horizontal: 38.h,
        vertical: 32.v,
      ),
      decoration: AppDecoration.fillOnErrorContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder40,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.v),
          Text(
            "msg_congratulations".tr,
            style: CustomTextStyles.headlineSmallErrorContainer,
          ),
          SizedBox(height: 14.v),
          SizedBox(
            width: 262.h,
            child: Text(
              "msg_your_account_is".tr,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyLarge!.copyWith(
                height: 1.40,
              ),
            ),
          ),
          SizedBox(height: 29.v),
          CustomImageView(
            imagePath: ImageConstant.imgVector60x60,
            height: 60.adaptSize,
            width: 60.adaptSize,
          ),
        ],
      ),
    );
  }
}
