import '../interests_people_page/widgets/interestspeople_item_widget.dart';
import 'controller/interests_people_controller.dart';
import 'models/interests_people_model.dart';
import 'models/interestspeople_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_05_blog_app/core/app_export.dart';

class InterestsPeoplePage extends StatelessWidget {
  InterestsPeoplePage({Key? key})
      : super(
          key: key,
        );

  InterestsPeopleController controller =
      Get.put(InterestsPeopleController(InterestsPeopleModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.white,
          child: Column(
            children: [
              SizedBox(height: 28.v),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Text(
                      "msg_see_all_people_you".tr,
                      style: CustomTextStyles.titleSmallBlack900,
                    ),
                  ),
                  SizedBox(height: 20.v),
                  _buildInterestsPeople(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildInterestsPeople() {
    return Obx(
      () => ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return Opacity(
            opacity: 0.5,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0.v),
              child: SizedBox(
                width: 335.h,
                child: Divider(
                  height: 1.v,
                  thickness: 1.v,
                  color: appTheme.gray300.withOpacity(0.53),
                ),
              ),
            ),
          );
        },
        itemCount: controller
            .interestsPeopleModelObj.value.interestspeopleItemList.value.length,
        itemBuilder: (context, index) {
          InterestspeopleItemModel model = controller.interestsPeopleModelObj
              .value.interestspeopleItemList.value[index];
          return InterestspeopleItemWidget(
            model,
          );
        },
      ),
    );
  }
}
