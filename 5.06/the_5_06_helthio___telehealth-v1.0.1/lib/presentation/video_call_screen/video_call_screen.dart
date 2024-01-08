import 'models/video_call_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_06_helthio___telehealth/core/app_export.dart';
import 'package:the_5_06_helthio___telehealth/widgets/custom_icon_button.dart';
import 'provider/video_call_provider.dart';

class VideoCallScreen extends StatefulWidget {
  const VideoCallScreen({Key? key})
      : super(
          key: key,
        );

  @override
  VideoCallScreenState createState() => VideoCallScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => VideoCallProvider(),
      child: VideoCallScreen(),
    );
  }
}

class VideoCallScreenState extends State<VideoCallScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            color: appTheme.whiteA700,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgGroup193,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: 270.h,
            margin: EdgeInsets.only(left: 65.h),
            decoration: AppDecoration.gradientBlackToBlack,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgImage,
                  height: 112.v,
                  width: 75.h,
                  radius: BorderRadius.circular(
                    15.h,
                  ),
                  alignment: Alignment.centerRight,
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(left: 33.h),
                  child: Text(
                    "msg_dr_marcus_horizon".tr,
                    style: CustomTextStyles.titleMediumWhiteA700,
                  ),
                ),
                SizedBox(height: 8.v),
                Padding(
                  padding: EdgeInsets.only(left: 73.h),
                  child: Text(
                    "lbl_00_05_24".tr,
                    style: CustomTextStyles.titleSmallWhiteA700,
                  ),
                ),
                SizedBox(height: 21.v),
                _buildCallActions(context),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildSwipeBakToMenu(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildCallActions(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 64.h),
      child: Row(
        children: [
          CustomIconButton(
            height: 52.adaptSize,
            width: 52.adaptSize,
            padding: EdgeInsets.all(14.h),
            decoration: IconButtonStyleHelper.fillRed,
            child: CustomImageView(
              imagePath: ImageConstant.imgUpload,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 25.h),
            child: CustomIconButton(
              height: 52.adaptSize,
              width: 52.adaptSize,
              padding: EdgeInsets.all(14.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgCall,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 25.h),
            child: CustomIconButton(
              height: 52.adaptSize,
              width: 52.adaptSize,
              padding: EdgeInsets.all(14.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgMenu,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSwipeBakToMenu(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 65.h,
        right: 20.h,
        bottom: 21.v,
      ),
      padding: EdgeInsets.symmetric(horizontal: 35.h),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgArrowUp,
            height: 20.adaptSize,
            width: 20.adaptSize,
            margin: EdgeInsets.only(left: 58.h),
          ),
          Padding(
            padding: EdgeInsets.only(top: 3.v),
            child: Text(
              "msg_swipe_back_to_menu".tr,
              style: CustomTextStyles.titleSmallWhiteA700,
            ),
          ),
        ],
      ),
    );
  }
}
