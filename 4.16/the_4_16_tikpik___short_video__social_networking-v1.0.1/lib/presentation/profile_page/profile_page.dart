import '../profile_page/widgets/autolayoutvertical_item_widget.dart';import 'controller/profile_controller.dart';import 'models/autolayoutvertical_item_model.dart';import 'models/profile_model.dart';import 'package:flutter/material.dart';import 'package:the_4_16_tikpik___short_video__social_networking/core/app_export.dart';
// ignore_for_file: must_be_immutable
class ProfilePage extends StatelessWidget {ProfilePage({Key? key}) : super(key: key);

ProfileController controller = Get.put(ProfileController(ProfileModel().obs));

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: Container(width: double.maxFinite, decoration: AppDecoration.fillOnErrorContainer, child: Column(children: [SizedBox(height: 23.v), Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Obx(() => GridView.builder(shrinkWrap: true, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(mainAxisExtent: 201.v, crossAxisCount: 2, mainAxisSpacing: 8.h, crossAxisSpacing: 8.h), physics: NeverScrollableScrollPhysics(), itemCount: controller.profileModelObj.value.autolayoutverticalItemList.value.length, itemBuilder: (context, index) {AutolayoutverticalItemModel model = controller.profileModelObj.value.autolayoutverticalItemList.value[index]; return AutolayoutverticalItemWidget(model);})))])))); } 
 }
