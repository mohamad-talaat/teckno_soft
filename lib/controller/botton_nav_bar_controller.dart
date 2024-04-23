import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teckno_soft/view/screens/4screens/home.dart';

import '../view/screens/4screens/myfavorite.dart';

class BottonNavBarController extends GetxController {
  int currentindex = 0;
  void onTap(int index) {
    currentindex = index;
    update();
  }


  List bottonNAvBArList = [
    {"name": "Home", "icon": Icons.home},
    {
      "name": "Shipping",
      "icon": Icons.local_shipping_outlined,
    },
    {
      "name": "Favourites",
      "icon": Icons.favorite,
    },
    {
      "name": "Profile",
      "icon": Icons.person,
    },
  ];

List<Widget> listPage = [
   const HomePage(),
  const Center(child: Text('shipping Page')),
const MyFavoritePage(), 
const Center(child: Text('profile Page')),
 
];


}
