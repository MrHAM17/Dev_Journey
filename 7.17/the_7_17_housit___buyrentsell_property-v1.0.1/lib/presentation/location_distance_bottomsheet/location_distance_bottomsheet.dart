import '../location_distance_bottomsheet/widgets/locationlist_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:the_7_17_housit___buyrentsell_property/core/app_export.dart';
import 'package:the_7_17_housit___buyrentsell_property/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class LocationDistanceBottomsheet extends StatelessWidget {
  const LocationDistanceBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 27.v,
      ),
      decoration: AppDecoration.white.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder50,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: 60.h,
            child: Divider(),
          ),
          SizedBox(height: 32.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 17.v,
                  bottom: 10.v,
                ),
                child: Text(
                  "Location Distance",
                  style: CustomTextStyles.titleMediumBold,
                ),
              ),
              CustomElevatedButton(
                height: 50.v,
                width: 76.h,
                text: "Edit",
                buttonStyle: CustomButtonStyles.fillBlueGray,
                buttonTextStyle: CustomTextStyles.bodyMediumWhiteA700,
              ),
            ],
          ),
          SizedBox(height: 35.v),
          ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 15.v,
              );
            },
            itemCount: 2,
            itemBuilder: (context, index) {
              return LocationlistItemWidget();
            },
          ),
          SizedBox(height: 29.v),
        ],
      ),
    );
  }
}
