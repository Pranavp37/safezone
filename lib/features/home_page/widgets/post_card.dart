import 'package:flutter/material.dart';
import 'package:safezone/features/home_page/widgets/post_bottons.dart';

import '../../../core/configs/theme/app_color.dart';

class PostCard extends StatelessWidget {
  const PostCard(
      {super.key,
      required this.index,
      required this.profileImg,
      required this.location,
      required this.postImg,
      required this.description,
      required this.username});
  final int index;
  final String username;
  final String profileImg;
  final String location;
  final dynamic postImg;
  final String description;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        elevation: 10,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 22,
                    backgroundImage: NetworkImage(
                      profileImg,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        username,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: AppColor.textColor),
                      ),
                      Text(
                        location,
                        style:
                            const TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
              //card image
              const SizedBox(
                height: 5,
              ),

              postImg == null
                  ? const SizedBox.shrink()
                  : ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                        height: MediaQuery.of(context).size.height / 4,
                        fit: BoxFit.cover,
                        width: double.infinity,
                        postImg.toString(),
                      ),
                    ),
              const SizedBox(
                height: 10,
              ),
              Text(
                description,
                style: const TextStyle(
                    color: AppColor.textColor, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PostBottons(
                    btnClr: AppColor.secondaryColor,
                    btmWdg: Icon(
                      Icons.favorite,
                      color: Colors.white,
                    ),
                  ),
                  PostBottons(
                    width: 100,
                    btnClr: AppColor.primaryColor,
                    btmWdg: Text(
                      'Connect',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  PostBottons(
                    btnClr: AppColor.secondaryColor,
                    btmWdg: Icon(
                      Icons.share,
                      color: Colors.white,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
