import 'package:flutter/material.dart';
import 'package:safezone/core/configs/assets/app_images.dart';
import 'package:safezone/core/configs/theme/app_color.dart';
import 'package:safezone/dummy_db.dart';
import 'package:safezone/features/home_page/widgets/post_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: AppColor.scaffoldBGColor,

      appBar: AppBar(
        titleTextStyle: const TextStyle(color: AppColor.textWhiteColor),
        title: Image.asset(
          height: 140,
          width: 140,
          AppImages.mainAppLogo,
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications,
                size: 28,
              )),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              AppImages.homeChatIcon,
              height: 28,
              color: AppColor.textWhiteColor,
            ),
          ),
        ],
      ),
      //
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) => PostCard(
                  index: index,
                  username: DummyDb.userInfo[index]['name'],
                  location: DummyDb.userInfo[index]['location'],
                  postImg: DummyDb.userInfo[index]['postImage'],
                  description: DummyDb.userInfo[index]['description'],
                  profileImg: DummyDb.userInfo[index]['dp_Image'],
                ),
                itemCount: DummyDb.userInfo.length,
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 10),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
