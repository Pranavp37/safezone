import 'package:flutter/material.dart';
import 'package:safezone/core/common/widgets/basicapp_button.dart';
import 'package:safezone/core/configs/assets/app_images.dart';
import 'package:safezone/core/configs/theme/app_color.dart';
import 'package:safezone/features/auth/view/singin_page.dart';
import 'package:safezone/features/bottom_nav/bottom_nav_bar.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.scaffoldBGColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //
              Image.asset(
                AppImages.mainAppLogo,
                color: Colors.blue,
                height: 160,
              ),

              Badge(
                alignment: const Alignment(0.3, 0.6),
                backgroundColor: Colors.transparent,
                label: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.add,
                    color: AppColor.primaryColor,
                    size: 50,
                  ),
                ),
                child: Container(
                  height: 140,
                  width: 140,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              'https://img.freepik.com/free-vector/blue-circle-with-white-user_78370-4707.jpg'))),
                ),
              ),
              const SizedBox(height: 10),

              //
              _fullnameTextField(context),
              const SizedBox(height: 20),
              _emailTextField(context),
              const SizedBox(height: 20),
              _passwordTextField(context),
              const SizedBox(height: 20),

              BasicappButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const BottomNavBar(),
                        ));
                  },
                  title: 'Sign Up')
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'You already have an account ?',
              style: TextStyle(color: Colors.black),
            ),
            const SizedBox(
              width: 2,
            ),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignInPage(),
                    ));
              },
              child: const Text(
                'SignsIn',
                style: TextStyle(color: AppColor.primaryColor),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _passwordTextField(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(hintText: 'password')
          .applyDefaults(Theme.of(context).inputDecorationTheme),
    );
  }

  Widget _emailTextField(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(hintText: 'email')
          .applyDefaults(Theme.of(context).inputDecorationTheme),
    );
  }

  Widget _fullnameTextField(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(hintText: 'full name')
          .applyDefaults(Theme.of(context).inputDecorationTheme),
    );
  }
}
