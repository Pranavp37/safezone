import 'package:flutter/material.dart';
import 'package:safezone/common/widgets/basicapp_button.dart';
import 'package:safezone/core/configs/assets/app_images.dart';
import 'package:safezone/core/configs/theme/app_color.dart';
import 'package:safezone/presentation/auth/view/singin_page.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.scaffoldBGColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //
              Image.asset(
                AppImages.mainAppLogo,
                color: Colors.blue,
                height: 200,
              ),
              //
              _fullnameTextField(context),
              const SizedBox(height: 20),
              _emailTextField(context),
              const SizedBox(height: 20),
              _passwordTextField(context),
              const SizedBox(height: 20),

              BasicappButton(onPressed: () {}, title: 'Sign Up')
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
                      builder: (context) => const SinginPage(),
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
