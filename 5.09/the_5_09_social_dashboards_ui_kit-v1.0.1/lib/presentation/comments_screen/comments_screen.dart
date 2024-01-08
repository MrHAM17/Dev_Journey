import '../comments_screen/widgets/comments_item_widget.dart';
import 'models/comments_item_model.dart';
import 'models/comments_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_09_social_dashboards_ui_kit/core/app_export.dart';
import 'package:the_5_09_social_dashboards_ui_kit/widgets/app_bar/appbar_leading_iconbutton_two.dart';
import 'package:the_5_09_social_dashboards_ui_kit/widgets/app_bar/appbar_title.dart';
import 'package:the_5_09_social_dashboards_ui_kit/widgets/app_bar/appbar_trailing_image.dart';
import 'package:the_5_09_social_dashboards_ui_kit/widgets/app_bar/custom_app_bar.dart';
import 'provider/comments_provider.dart';

class CommentsScreen extends StatefulWidget {
  const CommentsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  CommentsScreenState createState() => CommentsScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CommentsProvider(),
      child: CommentsScreen(),
    );
  }
}

class CommentsScreenState extends State<CommentsScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimary,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 28.h,
            vertical: 21.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "lbl_comments_148".tr,
                style: CustomTextStyles.titleMediumWhiteA700,
              ),
              SizedBox(height: 28.v),
              _buildComments(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 66.h,
      leading: AppbarLeadingIconbuttonTwo(
        imagePath: ImageConstant.imgButtonIconWhiteA700,
        margin: EdgeInsets.only(
          left: 28.h,
          top: 9.v,
          bottom: 9.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "lbl_title".tr,
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgRightButton,
          margin: EdgeInsets.symmetric(
            horizontal: 28.h,
            vertical: 9.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildComments(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 9.h),
      child: Consumer<CommentsProvider>(
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
            itemCount: provider.commentsModelObj.commentsItemList.length,
            itemBuilder: (context, index) {
              CommentsItemModel model =
                  provider.commentsModelObj.commentsItemList[index];
              return CommentsItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
