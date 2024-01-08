import '../models/paymentmethodlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_14_jusplay___movie_streaming_app/core/app_export.dart';

// ignore: must_be_immutable
class PaymentmethodlistItemWidget extends StatelessWidget {
  PaymentmethodlistItemWidget(
    this.paymentmethodlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  PaymentmethodlistItemModel paymentmethodlistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 20.v,
      ),
      decoration: AppDecoration.cardBg.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: paymentmethodlistItemModelObj?.googlePay,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 2.v,
            ),
            child: Text(
              paymentmethodlistItemModelObj.googlePay1!,
              style: theme.textTheme.titleSmall,
            ),
          ),
          Spacer(),
          Container(
            height: 20.adaptSize,
            width: 20.adaptSize,
            decoration: BoxDecoration(
              color: appTheme.black900,
              borderRadius: BorderRadius.circular(
                10.h,
              ),
              border: Border.all(
                color: theme.colorScheme.primaryContainer,
                width: 1.h,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
