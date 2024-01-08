import 'controller/search_not_found_controller.dart';
import 'models/search_not_found_model.dart';
import 'package:flutter/material.dart';
import 'package:the_4_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';

class SearchNotFoundPage extends StatelessWidget {
  SearchNotFoundPage({Key? key})
      : super(
          key: key,
        );

  SearchNotFoundController controller =
      Get.put(SearchNotFoundController(SearchNotFoundModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillWhiteA,
          child: Column(
            children: [
              SizedBox(height: 124.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 43.h),
                child: Column(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgGroup324,
                      height: 250.v,
                      width: 339.h,
                    ),
                    SizedBox(height: 39.v),
                    Text(
                      "lbl_not_found".tr,
                      style: theme.textTheme.headlineSmall,
                    ),
                    SizedBox(height: 13.v),
                    SizedBox(
                      width: 342.h,
                      child: Text(
                        "msg_sorry_the_keyword".tr,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.bodyLarge!.copyWith(
                          height: 1.40,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
