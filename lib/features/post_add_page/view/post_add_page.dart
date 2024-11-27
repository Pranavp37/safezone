import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:safezone/core/common/widgets/basicapp_button.dart';

class PostAddPage extends StatelessWidget {
  const PostAddPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Post'),
        centerTitle: true,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DottedBorder(
                dashPattern: const [10, 6],
                strokeWidth: 2,
                strokeCap: StrokeCap.butt,
                color: Colors.black54,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  // color: Colors.amber,
                  width: MediaQuery.of(context).size.width * 1.8,
                  decoration: const BoxDecoration(
                    border: Border(),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://www.edeltaes.com/wp-content/themes/wp-bootstrap-4/assets/images/default-image.jpg'),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Align(
                  alignment: Alignment(-.9, 0.6),
                  child: Text(
                    "Add a caption...",
                    style: TextStyle(fontSize: 20),
                  )),
              const SizedBox(height: 5),
              const TextField(
                maxLines: 5,
              ),
              const SizedBox(height: 30),
              BasicappButton(onPressed: () {}, title: "Share"),
            ],
          ),
        ),
      ),
    );
  }
}
