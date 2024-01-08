import '../social_account_link_screen/widgets/socialaccountlink_item_widget.dart';
import 'models/socialaccountlink_item_model.dart';
import 'notifier/social_account_link_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_13_fashionista___e_commerce_app/core/app_export.dart';
import 'package:the_6_13_fashionista___e_commerce_app/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:the_6_13_fashionista___e_commerce_app/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:the_6_13_fashionista___e_commerce_app/widgets/app_bar/custom_app_bar.dart';

class SocialAccountLinkScreen extends ConsumerStatefulWidget {
  const SocialAccountLinkScreen({Key? key}) : super(key: key);

  @override
  SocialAccountLinkScreenState createState() => SocialAccountLinkScreenState();
}

class SocialAccountLinkScreenState
    extends ConsumerState<SocialAccountLinkScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Padding(
                padding: EdgeInsets.only(left: 16.h, top: 24.v, right: 16.h),
                child: Consumer(builder: (context, ref, _) {
                  return ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (context, index) {
                        return SizedBox(height: 16.v);
                      },
                      itemCount: ref
                              .watch(socialAccountLinkNotifier)
                              .socialAccountLinkModelObj
                              ?.socialaccountlinkItemList
                              .length ??
                          0,
                      itemBuilder: (context, index) {
                        SocialaccountlinkItemModel model = ref
                                .watch(socialAccountLinkNotifier)
                                .socialAccountLinkModelObj
                                ?.socialaccountlinkItemList[index] ??
                            SocialaccountlinkItemModel();
                        return SocialaccountlinkItemWidget(model);
                      });
                }))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 56.h,
        leading: AppbarLeadingIconbuttonOne(
            imagePath: ImageConstant.imgArrowDown,
            margin: EdgeInsets.only(left: 16.h, top: 5.v, bottom: 5.v),
            onTap: () {
              onTapArrowDown(context);
            }),
        centerTitle: true,
        title: AppbarSubtitleOne(text: "lbl_social_network".tr));
  }

  /// Navigates back to the previous screen.
  onTapArrowDown(BuildContext context) {
    NavigatorService.goBack();
  }
}
