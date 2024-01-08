import '../home_page/widgets/options_item_widget.dart';
import 'models/options_item_model.dart';
import 'notifier/home_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_19_banksy___digital_banking/core/app_export.dart';
import 'package:the_6_19_banksy___digital_banking/widgets/custom_icon_button.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends ConsumerState<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.bg,
                child: Column(children: [
                  SizedBox(height: 40.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: 24.h, right: 24.h, bottom: 5.v),
                              child: Column(children: [
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomIconButton(
                                              height: 44.adaptSize,
                                              width: 44.adaptSize,
                                              padding: EdgeInsets.all(10.h),
                                              child: CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgGrid)),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  left: 68.h,
                                                  top: 6.v,
                                                  bottom: 11.v),
                                              child: Text("lbl_welcome_back".tr,
                                                  style: theme
                                                      .textTheme.titleLarge))
                                        ])),
                                SizedBox(height: 40.v),
                                _buildTotalBalance(context),
                                SizedBox(height: 40.v),
                                _buildOptions(context)
                              ]))))
                ]))));
  }

  /// Section Widget
  Widget _buildTotalBalance(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 104.h, vertical: 18.v),
        decoration: AppDecoration.fillPrimary,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text("lbl_total_balance".tr,
              style: CustomTextStyles.bodyLargeOnPrimary),
          SizedBox(height: 4.v),
          Text("lbl_3_567_12".tr, style: CustomTextStyles.displaySmallOnPrimary)
        ]));
  }

  /// Section Widget
  Widget _buildOptions(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      return GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 199.v,
              crossAxisCount: 2,
              mainAxisSpacing: 24.h,
              crossAxisSpacing: 24.h),
          physics: NeverScrollableScrollPhysics(),
          itemCount:
              ref.watch(homeNotifier).homeModelObj?.optionsItemList.length ?? 0,
          itemBuilder: (context, index) {
            OptionsItemModel model =
                ref.watch(homeNotifier).homeModelObj?.optionsItemList[index] ??
                    OptionsItemModel();
            return OptionsItemWidget(model, onTapOne: () {
              onTapOne(context);
            });
          });
    });
  }

  /// Navigates to the mobilePrepaidOneScreen when the action is triggered.
  onTapOne(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.mobilePrepaidOneScreen,
    );
  }
}
