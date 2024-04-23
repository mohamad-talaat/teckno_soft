import 'package:get/get.dart';
import 'package:teckno_soft/utils/middleware/mymiddleware.dart';
import 'package:teckno_soft/utils/pagescall/pagename.dart';
import 'package:teckno_soft/view/screens/4screens/home.dart';
import 'package:teckno_soft/view/screens/bottonnavbar.dart';
import 'package:teckno_soft/view/screens/items.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(
      name: "/",
      page: () => const BottomNavBar(),
      middlewares: [MyMiddleWare()]),
  GetPage(name: AppRoute.homePage, page: () => const HomePage()),
  GetPage(name: AppRoute.items, page: () => const Items()),
  /* GetPage(name: AppRoute.homePage, page: () => const HomePage()),
  GetPage(name: AppRoute.signUp, page: () => const SignUp()),
  GetPage(name: AppRoute.forgetPassword, page: () => const ForgetPassword()),
  GetPage(name: AppRoute.verfiyCode, page: () => const VerfiyCode()),
  GetPage(name: AppRoute.resetPassword, page: () => const ResetPassword()),
  GetPage(
      name: AppRoute.successResetpassword,
      page: () => const SuccessResetPassword()),
  GetPage(name: AppRoute.successSignUp, page: () => const SuccessSignUp()),
  GetPage(name: AppRoute.onBoarding, page: () => const OnBoarding()),
  GetPage(
      name: AppRoute.verfiyCodeSignUp, page: () => const VerfiyCodeSignUp()),
  GetPage(name: AppRoute.Items, page: () => const Items()),
  GetPage(name: AppRoute.productDetails, page: () => const ProductDetails()),
  GetPage(name: AppRoute.myfavoritePage, page: () => const MyFavorite()),
  GetPage(name: AppRoute.cart, page: () => const Cart()),
  GetPage(name: AppRoute.addressview, page: () => const AddressView()),
  GetPage(name: AppRoute.addressadd, page: () => const AddressAdd()),
  GetPage(name: AppRoute.checkout, page: () => const Checkout()),
  GetPage(name: AppRoute.orderspending, page: () => const OrdersPending()),
  GetPage(name: AppRoute.ordersarchive, page: () => const OrdersArchiveView()),
  GetPage(name: AppRoute.ordersdetails, page: () => const OrdersDetails()),
  // GetPage(
  //     name: AppRoute.addressadddetails, page: () => const AddressAddDetails()),*/
];
