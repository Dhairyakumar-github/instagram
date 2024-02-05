import 'package:flutter/material.dart';

class ReelsPage extends StatelessWidget {
  const ReelsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: [
          ReelUi(
              person: "assets/images/person4.jpg",
              name: "Abcd1",
              desc: "You atleast need 1-2 years to be job ready ..."),
          ReelUi(
              person: "assets/images/person3.jpg",
              name: "Abcd2",
              desc: "Lorem epsim doller..."),
        ],
      ),
    );
  }

  Stack ReelUi({@required person, @required name, required desc}) {
    return Stack(
      children: [
        const Positioned(
            // top: 20,
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    "Reels",
                    style: TextStyle(fontSize: 24),
                  ),
                  Icon(Icons.keyboard_arrow_down),
                ],
              ),
              Icon(
                Icons.camera_alt_outlined,
                size: 30,
              )
            ],
          ),
        )),
        Positioned(
          bottom: 30,
          right: 10,
          child: Column(
            children: [
              const Icon(
                Icons.favorite_border,
                size: 35,
              ),
              const Text("192k"),
              const SizedBox(
                height: 10,
              ),
              Image.asset(
                "assets/images/comment.png",
                height: 28,
              ),
              const Text("46k"),
              const SizedBox(
                height: 10,
              ),
              Image.asset(
                "assets/images/share_icon.png",
                height: 28,
              ),
              const Text("96k"),
              const SizedBox(
                height: 10,
              ),
              const Icon(
                Icons.more_vert_rounded,
                size: 30,
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(
                      color: const Color.fromARGB(255, 0, 0, 0), width: 3),
                ),
                child: Image.asset(
                  person,
                  fit: BoxFit.cover,
                ),
              )
            ],
          ),
        ),
        Positioned(
          bottom: 30,
          left: 25,
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 18,
                      backgroundImage: AssetImage(person),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      name,
                      style: const TextStyle(fontSize: 18),
                    )
                  ],
                ),
                const SizedBox(
                  height: 7,
                ),
                Text(desc)
              ],
            ),
          ),
        )
      ],
    );
  }
}
