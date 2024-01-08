import 'package:flutter/material.dart';
import 'package:the_7_19_banksy___digital_banking/core/app_export.dart';

// ignore: must_be_immutable
class HistoryItemWidget extends StatelessWidget {
  const HistoryItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "October",
              style: theme.textTheme.titleSmall,
            ),
            Text(
              "30/10/2020",
              style: CustomTextStyles.bodySmallGray500,
            ),
          ],
        ),
        SizedBox(height: 14.v),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Amount",
              style: theme.textTheme.bodyMedium,
            ),
            Padding(
              padding: EdgeInsets.only(left: 6.h),
              child: Text(
                "480",
                style: CustomTextStyles.titleSmallBold,
              ),
            ),
            Spacer(),
            Text(
              "Paid",
              style: CustomTextStyles.labelLargeGreen600,
            ),
          ],
        ),
      ],
    );
  }
}
