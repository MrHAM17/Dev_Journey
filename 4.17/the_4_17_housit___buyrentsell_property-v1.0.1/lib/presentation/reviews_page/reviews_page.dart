import '../reviews_page/widgets/layout26_item_widget.dart';import 'controller/reviews_controller.dart';import 'models/layout26_item_model.dart';import 'models/reviews_model.dart';import 'package:flutter/material.dart';import 'package:the_4_17_housit___buyrentsell_property/core/app_export.dart';
// ignore_for_file: must_be_immutable
class ReviewsPage extends StatelessWidget {ReviewsPage({Key? key}) : super(key: key);

ReviewsController controller = Get.put(ReviewsController(ReviewsModel().obs));

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(child: Column(children: [SizedBox(height: 36.v), _buildReviewList()]))))); } 
/// Section Widget
Widget _buildReviewList() { return Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_user_reviews".tr, style: theme.textTheme.titleMedium), SizedBox(height: 16.v), Obx(() => ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 10.v);}, itemCount: controller.reviewsModelObj.value.layout26ItemList.value.length, itemBuilder: (context, index) {Layout26ItemModel model = controller.reviewsModelObj.value.layout26ItemList.value[index]; return Layout26ItemWidget(model);}))])); } 
 }
