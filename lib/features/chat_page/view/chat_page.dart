import 'package:flutter/material.dart';
import 'package:safezone/core/configs/theme/app_color.dart';
import 'package:safezone/dummy_db.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Messaging',
          style: TextStyle(fontSize: 23),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: ListView.separated(
            itemBuilder: (context, index) {
              return Container(
                padding: const EdgeInsets.all(8),
                height: 100,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage:
                          NetworkImage(DummyDb.userInfo[index]['dp_Image']),
                    ),
                    //
                    SizedBox(
                      width: 230,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            DummyDb.userInfo[index]['name'],
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            maxLines: 1,
                            DummyDb.userInfo[index]['description'],
                            style: const TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                overflow: TextOverflow.ellipsis),
                          ),
                        ],
                      ),
                    ),
                    Center(
                      child: CircleAvatar(
                        radius: 12,
                        backgroundColor: AppColor.primaryColor,
                        child: Text(
                          '$index',
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              );
            },
            separatorBuilder: (context, index) => const SizedBox(height: 10),
            itemCount: DummyDb.userInfo.length),
      ),
    );
  }
}
