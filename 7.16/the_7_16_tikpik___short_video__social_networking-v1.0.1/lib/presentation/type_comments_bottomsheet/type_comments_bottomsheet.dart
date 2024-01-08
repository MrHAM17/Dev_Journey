import '../type_comments_bottomsheet/widgets/typecomments_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:the_7_16_tikpik___short_video__social_networking/core/app_export.dart';
import 'package:the_7_16_tikpik___short_video__social_networking/widgets/custom_icon_button.dart';
import 'package:the_7_16_tikpik___short_video__social_networking/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class TypeCommentsBottomsheet extends StatelessWidget {
  TypeCommentsBottomsheet({Key? key})
      : super(
          key: key,
        );

  TextEditingController categoriesGiftComponentAdditioController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: AppDecoration.outlineGray100.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL40,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 8.v),
          CustomImageView(
            imagePath: ImageConstant.imgFrameGray300,
            height: 3.v,
            width: 38.h,
          ),
          SizedBox(height: 24.v),
          Text(
            "24.8K Comments",
            style: theme.textTheme.headlineSmall,
          ),
          SizedBox(height: 23.v),
          Divider(
            indent: 24.h,
            endIndent: 24.h,
          ),
          SizedBox(height: 23.v),
          _buildTypeComments(context),
          SizedBox(height: 23.v),
          _buildAutoLayoutHorizontal(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTypeComments(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: ListView.separated(
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
        itemCount: 3,
        itemBuilder: (context, index) {
          return TypecommentsItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildAutoLayoutHorizontal(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.all(24.h),
      decoration: AppDecoration.outlineGray1001.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL24,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: CustomTextFormField(
              controller: categoriesGiftComponentAdditioController,
              hintText: "You’re so adorable |",
              hintStyle: CustomTextStyles.titleSmallPrimary,
              textInputAction: TextInputAction.done,
              suffix: Container(
                margin: EdgeInsets.fromLTRB(30.h, 18.v, 18.h, 18.v),
                child: CustomImageView(
                  imagePath: ImageConstant
                      .imgCategoriesgiftComponentadditionalIconsPrimary,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                ),
              ),
              suffixConstraints: BoxConstraints(
                maxHeight: 56.v,
              ),
              contentPadding: EdgeInsets.only(
                left: 18.h,
                top: 19.v,
                bottom: 19.v,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 12.h),
            child: CustomIconButton(
              height: 56.adaptSize,
              width: 56.adaptSize,
              padding: EdgeInsets.all(16.h),
              decoration: IconButtonStyleHelper.gradientDeepOrangeAToOrange,
              child: CustomImageView(
                imagePath:
                    ImageConstant.imgAutoLayoutHorizontalOnerrorcontainer,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
