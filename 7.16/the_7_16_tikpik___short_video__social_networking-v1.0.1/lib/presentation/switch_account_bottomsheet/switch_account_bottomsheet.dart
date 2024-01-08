import '../switch_account_bottomsheet/widgets/switchaccount_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:the_7_16_tikpik___short_video__social_networking/core/app_export.dart';

// ignore_for_file: must_be_immutable
class SwitchAccountBottomsheet extends StatelessWidget {
  const SwitchAccountBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 23.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.outlineGray100.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL40,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgFrameGray300,
            height: 3.v,
            width: 38.h,
          ),
          SizedBox(height: 23.v),
          Text(
            "Switch Account",
            style: theme.textTheme.headlineSmall,
          ),
          SizedBox(height: 24.v),
          Divider(),
          SizedBox(height: 23.v),
          ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 24.v,
              );
            },
            itemCount: 4,
            itemBuilder: (context, index) {
              return SwitchaccountItemWidget();
            },
          ),
          SizedBox(height: 28.v),
        ],
      ),
    );
  }
}
