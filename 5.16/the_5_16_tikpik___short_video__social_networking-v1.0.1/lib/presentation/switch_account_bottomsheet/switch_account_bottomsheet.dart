import '../switch_account_bottomsheet/widgets/switchaccount_item_widget.dart';
import 'models/switch_account_model.dart';
import 'models/switchaccount_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';
import 'provider/switch_account_provider.dart';

// ignore_for_file: must_be_immutable
class SwitchAccountBottomsheet extends StatefulWidget {
  const SwitchAccountBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  SwitchAccountBottomsheetState createState() =>
      SwitchAccountBottomsheetState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SwitchAccountProvider(),
      child: SwitchAccountBottomsheet(),
    );
  }
}

class SwitchAccountBottomsheetState extends State<SwitchAccountBottomsheet> {
  @override
  void initState() {
    super.initState();
  }

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
            "lbl_switch_account".tr,
            style: theme.textTheme.headlineSmall,
          ),
          SizedBox(height: 24.v),
          Divider(),
          SizedBox(height: 23.v),
          Consumer<SwitchAccountProvider>(
            builder: (context, provider, child) {
              return ListView.separated(
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
                itemCount:
                    provider.switchAccountModelObj.switchaccountItemList.length,
                itemBuilder: (context, index) {
                  SwitchaccountItemModel model = provider
                      .switchAccountModelObj.switchaccountItemList[index];
                  return SwitchaccountItemWidget(
                    model,
                  );
                },
              );
            },
          ),
          SizedBox(height: 28.v),
        ],
      ),
    );
  }
}
