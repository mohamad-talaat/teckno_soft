import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teckno_soft/controller/botton_nav_bar_controller.dart';

class BottomNavBar extends GetView<BottonNavBarController> {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(BottonNavBarController());
    return GetBuilder(builder: (BottonNavBarController controller) {
      return Scaffold(
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            shape: const StadiumBorder(),
            child: const Icon(Icons.add),
          ),
          /*     bottomNavigationBar: BottomAppBar(
            color: Colors.white70,
            elevation: 0.5,
            notchMargin: 10,
            shape: const CircularNotchedRectangle(),
            child: Row(children: [
              ...List.generate(
                  controller.bottonNAvBArList.length,
                  (index) => Expanded(
                        child: BottomNavBarWidget(
                          onPressed: () {
                            controller.onTap(index);
                          },
                          isactive:
                              index == controller.currentindex ? true : false,
                          iconName: controller.bottonNAvBArList[index]["name"],
                          icon: controller.bottonNAvBArList[index]['icon'],
                        ),
                      ))
            ])),
    */
          body: controller.listPage.elementAt(controller.currentindex),
          bottomNavigationBar: AnimatedBottomNavigationBar.builder(
              itemCount: controller.bottonNAvBArList.length,
              activeIndex: controller.currentindex,
              gapLocation: GapLocation.center,
              notchSmoothness: NotchSmoothness.verySmoothEdge,
              leftCornerRadius: 32,
              rightCornerRadius: 32,
              onTap: (index) => controller.onTap(index),
              
              tabBuilder: (int index, bool isActive) {
                
                return Icon(
                  controller.bottonNAvBArList[index]['icon'],
                  size: 24,
                  color: isActive ? Colors.black : Colors.orange,
                );
              }));
    });
  }
}
