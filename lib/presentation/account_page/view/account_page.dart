import 'package:flutter/material.dart';
import 'package:safezone/core/configs/assets/app_images.dart';
import 'package:safezone/core/configs/theme/app_color.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 60),
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              userProfileDetailsRow(),
              //
              const SizedBox(height: 10),
              const Divider(),
              const SizedBox(height: 20),
              //hosting
              const Row(
                children: [
                  Icon(
                    Icons.chair,
                    color: AppColor.primaryColor,
                    size: 25,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'Hosting',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 25,
                      color: AppColor.textColor,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              //invite
              const Row(
                children: [
                  Icon(
                    Icons.card_giftcard_outlined,
                    color: AppColor.primaryColor,
                    size: 25,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'invite',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 25,
                      color: AppColor.textColor,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              //
              const Row(
                children: [
                  Icon(
                    Icons.save,
                    color: AppColor.primaryColor,
                    size: 25,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'Saved',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 25,
                      color: AppColor.textColor,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              //thame
              const Row(
                children: [
                  Icon(
                    Icons.color_lens,
                    color: AppColor.primaryColor,
                    size: 25,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'theme',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 25,
                      color: AppColor.textColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget userProfileDetailsRow() {
    return Row(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: NetworkImage(AppImages.defultDpImg),
        ),
        const SizedBox(
          width: 10,
        ),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'user Name',
              style: TextStyle(
                color: AppColor.primaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            Text(
              'email@gmail.com',
              style: TextStyle(
                color: AppColor.textColor,
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ),
          ],
        )
      ],
    );
  }
}
