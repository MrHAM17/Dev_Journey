import '../profile_page/widgets/autolayoutvertical_item_widget.dart';import 'models/autolayoutvertical_item_model.dart';import 'notifier/profile_notifier.dart';import 'package:flutter/material.dart';import 'package:the_6_16_tikpik___short_video__social_networking/core/app_export.dart';class ProfilePage extends ConsumerStatefulWidget {const ProfilePage({Key? key}) : super(key: key);

@override ProfilePageState createState() =>  ProfilePageState();

 }
class ProfilePageState extends ConsumerState<ProfilePage> with  AutomaticKeepAliveClientMixin<ProfilePage> {@override bool get wantKeepAlive =>  true;

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: Container(width: double.maxFinite, decoration: AppDecoration.fillOnErrorContainer, child: Column(children: [SizedBox(height: 23.v), Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Consumer(builder: (context, ref, _) {return GridView.builder(shrinkWrap: true, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(mainAxisExtent: 201.v, crossAxisCount: 2, mainAxisSpacing: 8.h, crossAxisSpacing: 8.h), physics: NeverScrollableScrollPhysics(), itemCount: ref.watch(profileNotifier).profileModelObj?.autolayoutverticalItemList.length ?? 0, itemBuilder: (context, index) {AutolayoutverticalItemModel model = ref.watch(profileNotifier).profileModelObj?.autolayoutverticalItemList[index] ?? AutolayoutverticalItemModel(); return AutolayoutverticalItemWidget(model);});}))])))); } 
 }
