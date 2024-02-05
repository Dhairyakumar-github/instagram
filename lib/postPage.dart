import 'package:flutter/material.dart';

class PostPage extends StatelessWidget {
  const PostPage({super.key});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              width: w,
              height: h * .07,
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.clear,
                          size: 30,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text("New Post",
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                                color: Color.fromARGB(255, 43, 43, 44))),
                      ],
                    ),
                    Text(
                      "Next",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          color: Colors.blue),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: w,
              height: h * .4,
              color: Colors.grey,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text("Recents",
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 43, 43, 44))),
                      Icon(Icons.keyboard_arrow_down_outlined)
                    ],
                  ),
                  CircleAvatar(
                      radius: 16,
                      backgroundColor: Colors.grey,
                      child: Icon(
                        Icons.camera_alt_outlined,
                        color: Colors.white,
                        size: 18,
                      ))
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                physics: AlwaysScrollableScrollPhysics(),
                child: GridView.count(
                  shrinkWrap: true,
                  // padding: NeverScrollableScrollPhysics(),
                  mainAxisSpacing: 1,
                  crossAxisSpacing: 1,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisCount: 4,
                  children: [
                    Container(
                      color: const Color.fromARGB(255, 173, 179, 185),
                      height: MediaQuery.of(context).size.height * .2,
                      width: MediaQuery.of(context).size.width * .2,
                    ),
                    Container(
                      color: const Color.fromARGB(255, 132, 138, 143),
                      height: MediaQuery.of(context).size.height * .3,
                      width: MediaQuery.of(context).size.width * .3,
                    ),
                    Container(
                      color: const Color.fromARGB(255, 106, 117, 126),
                      height: MediaQuery.of(context).size.height * .3,
                      width: MediaQuery.of(context).size.width * .3,
                    ),
                    Container(
                      color: const Color.fromARGB(255, 172, 176, 179),
                      height: MediaQuery.of(context).size.height * .3,
                      width: MediaQuery.of(context).size.width * .3,
                    ),
                    Container(
                      color: const Color.fromARGB(255, 106, 117, 126),
                      height: MediaQuery.of(context).size.height * .3,
                      width: MediaQuery.of(context).size.width * .3,
                    ),
                    Container(
                      color: const Color.fromARGB(255, 132, 138, 143),
                      height: MediaQuery.of(context).size.height * .3,
                      width: MediaQuery.of(context).size.width * .3,
                    ),
                    Container(
                      color: Color.fromARGB(255, 169, 178, 187),
                      height: MediaQuery.of(context).size.height * .3,
                      width: MediaQuery.of(context).size.width * .3,
                    ),
                    Container(
                      color: Color.fromARGB(255, 141, 151, 160),
                      height: MediaQuery.of(context).size.height * .3,
                      width: MediaQuery.of(context).size.width * .3,
                    ),
                    Container(
                      color: const Color.fromARGB(255, 173, 179, 185),
                      height: MediaQuery.of(context).size.height * .2,
                      width: MediaQuery.of(context).size.width * .2,
                    ),
                    Container(
                      color: const Color.fromARGB(255, 132, 138, 143),
                      height: MediaQuery.of(context).size.height * .3,
                      width: MediaQuery.of(context).size.width * .3,
                    ),
                    Container(
                      color: const Color.fromARGB(255, 106, 117, 126),
                      height: MediaQuery.of(context).size.height * .3,
                      width: MediaQuery.of(context).size.width * .3,
                    ),
                    Container(
                      color: const Color.fromARGB(255, 172, 176, 179),
                      height: MediaQuery.of(context).size.height * .3,
                      width: MediaQuery.of(context).size.width * .3,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
