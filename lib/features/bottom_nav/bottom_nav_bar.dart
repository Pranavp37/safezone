import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:safezone/core/configs/assets/app_images.dart';
import 'package:safezone/core/configs/theme/app_color.dart';
import 'package:safezone/features/account_page/view/account_page.dart';
import 'package:safezone/features/chat_page/view/chat_page.dart';
import 'package:safezone/features/home_page/view/home_page.dart';
import 'package:safezone/features/post_add_page/view/post_add_page.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentPage = 0;
  List pages = [
    const HomePage(),
    const PostAddPage(),
    const ChatPage(),
    const AccountPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentPage],
      bottomNavigationBar: DefaultTabController(
        initialIndex: currentPage,
        length: 4,
        child: BottomNavyBar(
          containerHeight: 60,
          selectedIndex: currentPage,
          animationDuration: const Duration(milliseconds: 300),
          showElevation: true,
          iconSize: 25,
          curve: Curves.bounceInOut,
          items: [
            BottomNavyBarItem(
              icon: const Icon(Icons.home),
              title: const Text('Home'),
              activeColor: AppColor.primaryColor,
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              icon: const Icon(Icons.search),
              title: const Text('Search'),
              activeColor: AppColor.primaryColor,
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Image.asset(
                  AppImages.homeChatIcon,
                  height: 23,
                  color: AppColor.primaryColor,
                ),
              ),
              title: const Text('Chat'),
              activeColor: AppColor.primaryColor,
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              icon: const Icon(Icons.person),
              title: const Text('Account'),
              activeColor: AppColor.primaryColor,
              textAlign: TextAlign.center,
            ),
          ],
          onItemSelected: (value) {
            setState(() {
              currentPage = value;
            });
          },
        ),
      ),
    );
  }
}
