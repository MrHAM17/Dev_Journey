import 'package:the_4_05_blog_app/core/app_export.dart';
import 'package:the_4_05_blog_app/presentation/blog_screen/models/blog_model.dart';

/// A controller class for the BlogScreen.
///
/// This class manages the state of the BlogScreen, including the
/// current blogModelObj
class BlogController extends GetxController {
  Rx<BlogModel> blogModelObj = BlogModel().obs;
}
