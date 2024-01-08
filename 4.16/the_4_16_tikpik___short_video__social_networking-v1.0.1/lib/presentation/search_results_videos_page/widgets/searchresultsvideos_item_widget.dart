import '../controller/search_results_videos_controller.dart';
import '../models/searchresultsvideos_item_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_16_tikpik___short_video__social_networking/core/app_export.dart';
import 'package:the_4_16_tikpik___short_video__social_networking/widgets/custom_radio_button.dart';

// ignore: must_be_immutable
class SearchresultsvideosItemWidget extends StatelessWidget {
  SearchresultsvideosItemWidget(
    this.searchresultsvideosItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SearchresultsvideosItemModel searchresultsvideosItemModelObj;

  var controller = Get.find<SearchResultsVideosController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 300.v,
          width: 186.h,
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Obx(
                () => CustomImageView(
                  imagePath: searchresultsvideosItemModelObj.k!.value,
                  height: 300.v,
                  width: 186.h,
                  radius: BorderRadius.circular(
                    16.h,
                  ),
                  alignment: Alignment.center,
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  margin: EdgeInsets.fromLTRB(10.h, 274.v, 125.h, 10.v),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusStyle.circleBorder8,
                  ),
                  child: Row(
                    children: [
                      Obx(
                        () => CustomImageView(
                          imagePath: searchresultsvideosItemModelObj.k1!.value,
                          height: 16.adaptSize,
                          width: 16.adaptSize,
                          radius: BorderRadius.circular(
                            8.h,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 4.h,
                          top: 2.v,
                        ),
                        child: Obx(
                          () => Text(
                            searchresultsvideosItemModelObj.k2!.value,
                            style: theme.textTheme.labelMedium,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 8.v),
        Obx(
          () => CustomRadioButton(
            text: "lbl_ariana_black".tr,
            value: "lbl_ariana_black".tr,
            groupValue: searchresultsvideosItemModelObj.radioGroup!.value,
            padding: EdgeInsets.symmetric(vertical: 2.v),
            textStyle: CustomTextStyles.labelLargeGray900,
            onChange: (value) {
              searchresultsvideosItemModelObj.radioGroup!.value = value;
            },
          ),
        ),
      ],
    );
  }
}
