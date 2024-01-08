import '../gallery_screen/widgets/gallery_item_widget.dart';import 'models/gallery_item_model.dart';import 'notifier/gallery_notifier.dart';import 'package:flutter/material.dart';import 'package:the_6_07_comfort___hotel_booking_app/core/app_export.dart';import 'package:the_6_07_comfort___hotel_booking_app/widgets/app_bar/appbar_leading_image.dart';import 'package:the_6_07_comfort___hotel_booking_app/widgets/app_bar/appbar_title.dart';import 'package:the_6_07_comfort___hotel_booking_app/widgets/app_bar/appbar_trailing_iconbutton.dart';import 'package:the_6_07_comfort___hotel_booking_app/widgets/app_bar/custom_app_bar.dart';class GalleryScreen extends ConsumerStatefulWidget {const GalleryScreen({Key? key}) : super(key: key);

@override GalleryScreenState createState() =>  GalleryScreenState();

 }
class GalleryScreenState extends ConsumerState<GalleryScreen> {@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Padding(padding: EdgeInsets.only(left: 24.h, top: 24.v, right: 24.h), child: Consumer(builder: (context, ref, _) {return GridView.builder(shrinkWrap: true, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(mainAxisExtent: 141.v, crossAxisCount: 2, mainAxisSpacing: 16.h, crossAxisSpacing: 16.h), physics: BouncingScrollPhysics(), itemCount: ref.watch(galleryNotifier).galleryModelObj?.galleryItemList.length ?? 0, itemBuilder: (context, index) {GalleryItemModel model = ref.watch(galleryNotifier).galleryModelObj?.galleryItemList[index] ?? GalleryItemModel(); return GalleryItemWidget(model);});})))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 16.v), onTap: () {onTapArrowDown(context);}), title: AppbarTitle(text: "msg_gallery_hotel_photos".tr, margin: EdgeInsets.only(left: 16.h)), actions: [AppbarTrailingIconbutton(imagePath: ImageConstant.imgSettingsWhiteA700, margin: EdgeInsets.fromLTRB(24.h, 11.v, 24.h, 16.v))]); } 

/// Navigates back to the previous screen.
onTapArrowDown(BuildContext context) { NavigatorService.goBack(); } 
 }
