import 'package:flutter/material.dart';
import 'package:the_7_02_music_player/core/app_export.dart';

// ignore: must_be_immutable
class FavoritesItemWidget extends StatelessWidget {
  FavoritesItemWidget({
    Key? key,
    this.onTapFavouritesOption,
  }) : super(
          key: key,
        );

  VoidCallback? onTapFavouritesOption;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapFavouritesOption!.call();
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 18.h,
          vertical: 16.v,
        ),
        decoration: AppDecoration.fillPrimaryContainer.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder9,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgIconsOnprimarycontainer24x24,
              height: 24.adaptSize,
              width: 24.adaptSize,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 105.h,
                bottom: 3.v,
              ),
              child: Text(
                "Tracks",
                style: theme.textTheme.bodyLarge,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
