import 'package:flutter/material.dart';
import 'package:the_7_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';
import 'package:the_7_18_tune_cast___music_streaming__podcast_app/widgets/custom_switch.dart';

// ignore: must_be_immutable
class PlaybackItemWidget extends StatelessWidget {
  PlaybackItemWidget({Key? key})
      : super(
          key: key,
        );

  bool isSelectedSwitch = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Automix",
                style: CustomTextStyles.titleMediumSemiBold_1,
              ),
              SizedBox(height: 6.v),
              SizedBox(
                width: 272.h,
                child: Text(
                  "Allows seamless transitions between songs on select playlists.",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.titleSmallMedium.copyWith(
                    height: 1.40,
                  ),
                ),
              ),
            ],
          ),
        ),
        CustomSwitch(
          margin: EdgeInsets.only(
            left: 63.h,
            top: 20.v,
            bottom: 24.v,
          ),
          value: isSelectedSwitch,
          onChange: (value) {
            isSelectedSwitch = value;
          },
        ),
      ],
    );
  }
}
