import 'package:flutter/material.dart';
import 'package:the_7_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';

// ignore: must_be_immutable
class SearchresultplaylistItemWidget extends StatelessWidget {
  SearchresultplaylistItemWidget({
    Key? key,
    this.onTapCardBig,
  }) : super(
          key: key,
        );

  VoidCallback? onTapCardBig;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              onTapCardBig!.call();
            },
            child: Padding(
              padding: EdgeInsets.only(right: 6.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgImage74,
                    height: 184.adaptSize,
                    width: 184.adaptSize,
                    radius: BorderRadius.circular(
                      28.h,
                    ),
                  ),
                  SizedBox(height: 13.v),
                  SizedBox(
                    width: 162.h,
                    child: Text(
                      "Ariana Grande - All \nSongs ",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.titleMedium_1.copyWith(
                        height: 1.40,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgImage75,
                  height: 184.adaptSize,
                  width: 184.adaptSize,
                  radius: BorderRadius.circular(
                    28.h,
                  ),
                ),
                SizedBox(height: 13.v),
                SizedBox(
                  width: 172.h,
                  child: Text(
                    "Ariana Grande - Top \nGreatest Hits",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.titleMedium_1.copyWith(
                      height: 1.40,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
