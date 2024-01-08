import '../profile_page/widgets/autolayoutvertical_item_widget.dart';import 'package:flutter/material.dart';import 'package:the_7_16_tikpik___short_video__social_networking/core/app_export.dart';class ProfilePage extends StatefulWidget {const ProfilePage({Key? key}) : super(key: key);

@override ProfilePageState createState() =>  ProfilePageState();

 }
class ProfilePageState extends State<ProfilePage> with  AutomaticKeepAliveClientMixin<ProfilePage> {@override bool get wantKeepAlive =>  true;

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: Container(width: double.maxFinite, decoration: AppDecoration.fillOnErrorContainer, child: Column(children: [SizedBox(height: 23.v), Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: GridView.builder(shrinkWrap: true, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(mainAxisExtent: 201.v, crossAxisCount: 2, mainAxisSpacing: 8.h, crossAxisSpacing: 8.h), physics: NeverScrollableScrollPhysics(), itemCount: 5, itemBuilder: (context, index) {return AutolayoutverticalItemWidget();}))])))); } 
 }
