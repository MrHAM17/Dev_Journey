import 'package:flutter/material.dart';
import 'package:the_7_20_movie_streaming/core/app_export.dart';

// ignore: must_be_immutable
class ChannelsixItemWidget extends StatelessWidget {
  const ChannelsixItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Last time we meet",
          style: CustomTextStyles.titleMediumWhiteA700Medium,
        ),
        SizedBox(height: 9.v),
        Text(
          "02:00 AM (EST)",
          style: CustomTextStyles.bodyMediumOnPrimaryContainer,
        ),
      ],
    );
  }
}
