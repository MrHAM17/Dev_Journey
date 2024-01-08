import 'notifier/search_not_found_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_18_tune_cast___music_streaming__podcast_app/core/app_export.dart';

// ignore_for_file: must_be_immutable
class SearchNotFoundPage extends ConsumerStatefulWidget {
  const SearchNotFoundPage({Key? key})
      : super(
          key: key,
        );

  @override
  SearchNotFoundPageState createState() => SearchNotFoundPageState();
}

class SearchNotFoundPageState extends ConsumerState<SearchNotFoundPage>
    with AutomaticKeepAliveClientMixin<SearchNotFoundPage> {
  @override
  bool get wantKeepAlive => true;
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
