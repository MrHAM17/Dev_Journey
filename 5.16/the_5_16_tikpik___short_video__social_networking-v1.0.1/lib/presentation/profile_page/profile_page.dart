import '../profile_page/widgets/autolayoutvertical_item_widget.dart';import 'models/autolayoutvertical_item_model.dart';import 'models/profile_model.dart';import 'package:flutter/material.dart';import 'package:the_5_16_tikpik___short_video__social_networking/core/app_export.dart';import 'provider/profile_provider.dart';import 'package:the_5_16_tikpik___short_video__social_networking/presentation/total_likes_dialog/total_likes_dialog.dart';class ProfilePage extends StatefulWidget {const ProfilePage({Key? key}) : super(key: key);

@override ProfilePageState createState() =>  ProfilePageState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => ProfileProvider(), child: ProfilePage()); } 
 }
class ProfilePageState extends State<ProfilePage> with  AutomaticKeepAliveClientMixin<ProfilePage> {@override bool get wantKeepAlive =>  true;

@override void initState() { super.initState();NavigatorService.pushNamed(AppRoutes.followersTabContainerScreen, );NavigatorService.pushNamed(AppRoutes.sendMessageScreen, );showDialog(context: context, builder: (_) => AlertDialog(content: TotalLikesDialog.builder(context),backgroundColor: Colors.transparent, contentPadding: EdgeInsets.zero, insetPadding: const EdgeInsets.only(left: 0),)); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: Container(width: double.maxFinite, decoration: AppDecoration.fillOnErrorContainer, child: Column(children: [SizedBox(height: 23.v), Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Consumer<ProfileProvider>(builder: (context, provider, child) {return GridView.builder(shrinkWrap: true, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(mainAxisExtent: 201.v, crossAxisCount: 2, mainAxisSpacing: 8.h, crossAxisSpacing: 8.h), physics: NeverScrollableScrollPhysics(), itemCount: provider.profileModelObj.autolayoutverticalItemList.length, itemBuilder: (context, index) {AutolayoutverticalItemModel model = provider.profileModelObj.autolayoutverticalItemList[index]; return AutolayoutverticalItemWidget(model);});}))])))); } 
 }
