import 'package:the_4_12_street_style___e_commerce_app/presentation/splash_screen/splash_screen.dart';
import 'package:the_4_12_street_style___e_commerce_app/presentation/splash_screen/binding/splash_binding.dart';
import 'package:the_4_12_street_style___e_commerce_app/presentation/home_screen/home_screen.dart';
import 'package:the_4_12_street_style___e_commerce_app/presentation/home_screen/binding/home_binding.dart';
import 'package:the_4_12_street_style___e_commerce_app/presentation/menu_screen/menu_screen.dart';
import 'package:the_4_12_street_style___e_commerce_app/presentation/menu_screen/binding/menu_binding.dart';
import 'package:the_4_12_street_style___e_commerce_app/presentation/discover_screen/discover_screen.dart';
import 'package:the_4_12_street_style___e_commerce_app/presentation/discover_screen/binding/discover_binding.dart';
import 'package:the_4_12_street_style___e_commerce_app/presentation/shop_screen/shop_screen.dart';
import 'package:the_4_12_street_style___e_commerce_app/presentation/shop_screen/binding/shop_binding.dart';
import 'package:the_4_12_street_style___e_commerce_app/presentation/favorite_screen/favorite_screen.dart';
import 'package:the_4_12_street_style___e_commerce_app/presentation/favorite_screen/binding/favorite_binding.dart';
import 'package:the_4_12_street_style___e_commerce_app/presentation/product_screen/product_screen.dart';
import 'package:the_4_12_street_style___e_commerce_app/presentation/product_screen/binding/product_binding.dart';
import 'package:the_4_12_street_style___e_commerce_app/presentation/my_order_screen/my_order_screen.dart';
import 'package:the_4_12_street_style___e_commerce_app/presentation/my_order_screen/binding/my_order_binding.dart';
import 'package:the_4_12_street_style___e_commerce_app/presentation/payment_screen/payment_screen.dart';
import 'package:the_4_12_street_style___e_commerce_app/presentation/payment_screen/binding/payment_binding.dart';
import 'package:the_4_12_street_style___e_commerce_app/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:the_4_12_street_style___e_commerce_app/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String homeScreen = '/home_screen';

  static const String menuScreen = '/menu_screen';

  static const String discoverScreen = '/discover_screen';

  static const String shopScreen = '/shop_screen';

  static const String favoriteScreen = '/favorite_screen';

  static const String productScreen = '/product_screen';

  static const String myOrderScreen = '/my_order_screen';

  static const String paymentScreen = '/payment_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: homeScreen,
      page: () => HomeScreen(),
      bindings: [
        HomeBinding(),
      ],
    ),
    GetPage(
      name: menuScreen,
      page: () => MenuScreen(),
      bindings: [
        MenuBinding(),
      ],
    ),
    GetPage(
      name: discoverScreen,
      page: () => DiscoverScreen(),
      bindings: [
        DiscoverBinding(),
      ],
    ),
    GetPage(
      name: shopScreen,
      page: () => ShopScreen(),
      bindings: [
        ShopBinding(),
      ],
    ),
    GetPage(
      name: favoriteScreen,
      page: () => FavoriteScreen(),
      bindings: [
        FavoriteBinding(),
      ],
    ),
    GetPage(
      name: productScreen,
      page: () => ProductScreen(),
      bindings: [
        ProductBinding(),
      ],
    ),
    GetPage(
      name: myOrderScreen,
      page: () => MyOrderScreen(),
      bindings: [
        MyOrderBinding(),
      ],
    ),
    GetPage(
      name: paymentScreen,
      page: () => PaymentScreen(),
      bindings: [
        PaymentBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    )
  ];
}
