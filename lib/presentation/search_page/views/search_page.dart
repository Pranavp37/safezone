import 'package:flutter/material.dart';
import 'package:safezone/core/configs/theme/app_color.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 50),
          child: Column(
            children: [
              SearchBar(
                elevation: WidgetStatePropertyAll(5),
                leading: Icon(
                  Icons.search,
                  color: AppColor.primaryColor,
                ),
                hintStyle: WidgetStatePropertyAll<TextStyle>(
                    TextStyle(color: AppColor.textColor)),
                hintText: 'City,Region,Address',
              ),
              SizedBox(
                height: 20,
              ),
              Divider(),
            ],
          ),
        ));
  }
}
