import '../profile_page/widgets/profile_item_widget.dart';
import 'models/profile_item_model.dart';
import 'notifier/profile_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_06_helthio___telehealth/core/app_export.dart';
import 'package:the_6_06_helthio___telehealth/widgets/custom_icon_button.dart';

class ProfilePage extends ConsumerStatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  ProfilePageState createState() => ProfilePageState();
}

class ProfilePageState extends ConsumerState<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            backgroundColor: Colors.transparent,
            body: Container(
                width: SizeUtils.width,
                height: SizeUtils.height,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment(0.5, 0),
                        end: Alignment(0.5, 1),
                        colors: [
                      theme.colorScheme.secondaryContainer,
                      theme.colorScheme.onError
                    ])),
                child: Container(
                    width: double.maxFinite,
                    decoration: AppDecoration.linear,
                    child: Column(children: [
                      SizedBox(height: 44.v),
                      _buildProfile(context),
                      SizedBox(height: 27.v),
                      _buildProfile1(context),
                      SizedBox(height: 38.v),
                      Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.h, vertical: 29.v),
                          decoration: AppDecoration.white.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderTL30),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(height: 5.v),
                                _buildMySave(context),
                                SizedBox(height: 14.v),
                                Divider(),
                                SizedBox(height: 14.v),
                                _buildAppointment(context),
                                SizedBox(height: 14.v),
                                Divider(),
                                SizedBox(height: 14.v),
                                _buildPayment(context),
                                SizedBox(height: 14.v),
                                Divider(),
                                SizedBox(height: 14.v),
                                _buildFAQs(context),
                                SizedBox(height: 14.v),
                                Divider(),
                                SizedBox(height: 14.v),
                                _buildLogout(context)
                              ]))
                    ])))));
  }

  /// Section Widget
  Widget _buildProfile(BuildContext context) {
    return Column(children: [
      SizedBox(
          height: 82.v,
          width: 81.h,
          child: Stack(alignment: Alignment.bottomRight, children: [
            CustomImageView(
                imagePath: ImageConstant.imgEllipse27,
                height: 80.adaptSize,
                width: 80.adaptSize,
                radius: BorderRadius.circular(40.h),
                alignment: Alignment.center),
            CustomIconButton(
                height: 24.adaptSize,
                width: 24.adaptSize,
                padding: EdgeInsets.all(4.h),
                decoration: IconButtonStyleHelper.fillWhiteA,
                alignment: Alignment.bottomRight,
                onTap: () {
                  onTapBtnCamera(context);
                },
                child: CustomImageView(imagePath: ImageConstant.imgCamera))
          ])),
      SizedBox(height: 19.v),
      Text("lbl_amelia_renata".tr,
          style: CustomTextStyles.titleMediumWhiteA70018)
    ]);
  }

  /// Section Widget
  Widget _buildProfile1(BuildContext context) {
    return SizedBox(
        height: 75.v,
        child: Consumer(builder: (context, ref, _) {
          return ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 44.h),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 31.5.h),
                    child: SizedBox(
                        height: 44.v,
                        child: VerticalDivider(
                            width: 1.h,
                            thickness: 1.v,
                            color: appTheme.blue300)));
              },
              itemCount: ref
                      .watch(profileNotifier)
                      .profileModelObj
                      ?.profileItemList
                      .length ??
                  0,
              itemBuilder: (context, index) {
                ProfileItemModel model = ref
                        .watch(profileNotifier)
                        .profileModelObj
                        ?.profileItemList[index] ??
                    ProfileItemModel();
                return ProfileItemWidget(model);
              });
        }));
  }

  /// Section Widget
  Widget _buildMySave(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      SizedBox(
          height: 48.v,
          width: 43.h,
          child: Stack(alignment: Alignment.center, children: [
            Align(
                alignment: Alignment.center,
                child: Container(
                    height: 48.v,
                    width: 43.h,
                    decoration: BoxDecoration(
                        color: theme.colorScheme.onErrorContainer,
                        borderRadius: BorderRadius.circular(24.h)))),
            CustomImageView(
                imagePath: ImageConstant.imgFavoritePrimary,
                height: 26.v,
                width: 24.h,
                alignment: Alignment.center)
          ])),
      Padding(
          padding: EdgeInsets.only(left: 18.h, top: 17.v, bottom: 11.v),
          child: Text("lbl_my_saved".tr, style: theme.textTheme.titleMedium)),
      Spacer(),
      CustomImageView(
          imagePath: ImageConstant.imgArrowRight,
          height: 26.v,
          width: 24.h,
          margin: EdgeInsets.only(top: 11.v, bottom: 10.v))
    ]);
  }

  /// Section Widget
  Widget _buildAppointment(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      SizedBox(
          height: 48.v,
          width: 43.h,
          child: Stack(alignment: Alignment.center, children: [
            Align(
                alignment: Alignment.center,
                child: Container(
                    height: 48.v,
                    width: 43.h,
                    decoration: BoxDecoration(
                        color: theme.colorScheme.onErrorContainer,
                        borderRadius: BorderRadius.circular(24.h)))),
            CustomImageView(
                imagePath: ImageConstant.imgUserPrimary26x24,
                height: 26.v,
                width: 24.h,
                alignment: Alignment.center)
          ])),
      Padding(
          padding: EdgeInsets.only(left: 18.h, top: 17.v, bottom: 11.v),
          child:
              Text("lbl_appointmnet".tr, style: theme.textTheme.titleMedium)),
      Spacer(),
      CustomImageView(
          imagePath: ImageConstant.imgArrowRight,
          height: 26.v,
          width: 24.h,
          margin: EdgeInsets.only(top: 11.v, bottom: 10.v))
    ]);
  }

  /// Section Widget
  Widget _buildPayment(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      SizedBox(
          height: 48.v,
          width: 43.h,
          child: Stack(alignment: Alignment.center, children: [
            Align(
                alignment: Alignment.center,
                child: Container(
                    height: 48.v,
                    width: 43.h,
                    decoration: BoxDecoration(
                        color: theme.colorScheme.onErrorContainer,
                        borderRadius: BorderRadius.circular(24.h)))),
            CustomImageView(
                imagePath: ImageConstant.imgUser26x24,
                height: 26.v,
                width: 24.h,
                alignment: Alignment.center)
          ])),
      Padding(
          padding: EdgeInsets.only(left: 18.h, top: 17.v, bottom: 11.v),
          child: Text("lbl_payment_method".tr,
              style: theme.textTheme.titleMedium)),
      Spacer(),
      CustomImageView(
          imagePath: ImageConstant.imgArrowRight,
          height: 26.v,
          width: 24.h,
          margin: EdgeInsets.only(top: 10.v, bottom: 11.v))
    ]);
  }

  /// Section Widget
  Widget _buildFAQs(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      SizedBox(
          height: 48.v,
          width: 43.h,
          child: Stack(alignment: Alignment.center, children: [
            Align(
                alignment: Alignment.center,
                child: Container(
                    height: 48.v,
                    width: 43.h,
                    decoration: BoxDecoration(
                        color: theme.colorScheme.onErrorContainer,
                        borderRadius: BorderRadius.circular(24.h)))),
            CustomImageView(
                imagePath: ImageConstant.imgUser1,
                height: 26.v,
                width: 24.h,
                alignment: Alignment.center)
          ])),
      Padding(
          padding: EdgeInsets.only(left: 18.h, top: 16.v, bottom: 12.v),
          child: Text("lbl_faqs".tr, style: theme.textTheme.titleMedium)),
      Spacer(),
      CustomImageView(
          imagePath: ImageConstant.imgArrowRight,
          height: 26.v,
          width: 24.h,
          margin: EdgeInsets.only(top: 11.v, bottom: 10.v))
    ]);
  }

  /// Section Widget
  Widget _buildLogout(BuildContext context) {
    return SizedBox(
        height: 48.v,
        width: 335.h,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.centerLeft,
              child: Container(
                  height: 48.v,
                  width: 43.h,
                  decoration: BoxDecoration(
                      color: appTheme.red50,
                      borderRadius: BorderRadius.circular(24.h)))),
          Align(
              alignment: Alignment.center,
              child: Padding(
                  padding: EdgeInsets.only(left: 9.h, top: 10.v, bottom: 10.v),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgIcRoundLogout,
                            height: 26.v,
                            width: 24.h),
                        Padding(
                            padding: EdgeInsets.only(left: 28.h, top: 6.v),
                            child: Text("lbl_logout".tr,
                                style: CustomTextStyles.titleMediumRedA200)),
                        Spacer(),
                        CustomImageView(
                            imagePath: ImageConstant.imgArrowRight,
                            height: 26.v,
                            width: 24.h)
                      ])))
        ]));
  }

  /// Requests permission to access the camera and storage, and displays a model
  /// sheet for selecting images.
  ///
  /// Throws an error if permission is denied or an error occurs while selecting images.
  onTapBtnCamera(BuildContext context) async {
    await PermissionManager.askForPermission(Permission.camera);
    await PermissionManager.askForPermission(Permission.storage);
    List<String?>? imageList = [];
    await FileManager().showModelSheetForImage(getImages: (value) async {
      imageList = value;
    });
  }
}
