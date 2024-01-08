import '../gallery_page/widgets/gallery_item_widget.dart';
import 'models/gallery_item_model.dart';
import 'models/gallery_model.dart';
import 'package:flutter/material.dart';
import 'package:the_5_09_social_dashboards_ui_kit/core/app_export.dart';
import 'provider/gallery_provider.dart';

// ignore_for_file: must_be_immutable
class GalleryPage extends StatefulWidget {
  const GalleryPage({Key? key})
      : super(
          key: key,
        );

  @override
  GalleryPageState createState() => GalleryPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => GalleryProvider(),
      child: GalleryPage(),
    );
  }
}

class GalleryPageState extends State<GalleryPage>
    with AutomaticKeepAliveClientMixin<GalleryPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillGray,
          child: Column(
            children: [
              SizedBox(height: 30.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 28.h),
                child: Consumer<GalleryProvider>(
                  builder: (context, provider, child) {
                    return GridView.builder(
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: 320.v,
                        crossAxisCount: 1,
                        mainAxisSpacing: 1.h,
                        crossAxisSpacing: 1.h,
                      ),
                      physics: NeverScrollableScrollPhysics(),
                      itemCount:
                          provider.galleryModelObj.galleryItemList.length,
                      itemBuilder: (context, index) {
                        GalleryItemModel model =
                            provider.galleryModelObj.galleryItemList[index];
                        return GalleryItemWidget(
                          model,
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
