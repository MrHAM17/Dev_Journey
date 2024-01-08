import 'package:flutter/material.dart';
import 'package:the_7_02_music_player/core/app_export.dart';

// ignore: must_be_immutable
class PlaylistItemWidget extends StatelessWidget {
  const PlaylistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgPhoto8,
          height: 59.v,
          width: 60.h,
          radius: BorderRadius.circular(
            30.h,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 17.h,
            top: 7.v,
            bottom: 7.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Flashbacks",
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 4.v),
              Text(
                "Emika",
                style: theme.textTheme.bodyMedium,
              ),
            ],
          ),
        ),
        Spacer(),
        Opacity(
          opacity: 0.503,
          child: CustomImageView(
            imagePath: ImageConstant.imgMoreIcon,
            height: 4.v,
            width: 20.h,
            margin: EdgeInsets.only(
              top: 27.v,
              bottom: 28.v,
            ),
          ),
        ),
      ],
    );
  }
}
