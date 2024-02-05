import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(
                    Icons.lock_open,
                    size: 22,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "alen_frek",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  Icon(Icons.keyboard_arrow_down_outlined)
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            //    --------------------------
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Color(0xff9b2282), Color(0xffeea863)]),
                      ),
                      height: MediaQuery.of(context).size.height * .12,
                      width: MediaQuery.of(context).size.width * .3,
                      child: const Padding(
                        padding: EdgeInsets.all(4),
                        child: CircleAvatar(
                          // radius: 50,
                          foregroundImage:
                              AssetImage("assets/images/person6.jpg"),
                        ),
                      ),
                    ),
                    const Text("Alen Frek",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500))
                  ],
                ),
                const Row(
                  children: [
                    Column(
                      children: [
                        Text("0",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500)),
                        Text(
                          "Post",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Text("234",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500)),
                        Text(
                          "Follower",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Text("179",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500)),
                        Text(
                          "Following",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
            //------------------
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width / 2.7,
                    height: MediaQuery.of(context).size.height / 23,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 213, 217, 219),
                    ),
                    child: const Text("Edit Profile",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width / 2.7,
                      height: MediaQuery.of(context).size.height / 23,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(255, 213, 217, 219),
                      ),
                      child: const Text("Share Profile",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500))),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 8,
                    height: MediaQuery.of(context).size.height / 23,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 213, 217, 219),
                    ),
                    child: const Icon(Icons.person_add),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Story Hilights",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                  Icon(Icons.keyboard_arrow_down_outlined)
                ],
              ),
            ),
            Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                  child: Container(
                    height: 65,
                    width: 65,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                          color: const Color.fromARGB(255, 0, 0, 0),
                          width: 1.1),
                      color: const Color.fromARGB(255, 255, 255, 255),
                    ),
                    child: const Icon(
                      Icons.add,
                      size: 27,
                    ),
                  ),
                ),
                const Text(
                  "New",
                  style: TextStyle(fontSize: 15),
                )
              ],
            ),
            const DefaultTabController(
                length: 2,
                child: TabBar(
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicatorColor: Colors.black,
                  tabs: [
                    Tab(
                      icon: Icon(
                        Icons.grid_on_rounded,
                        color: Color.fromARGB(255, 65, 62, 62),
                        size: 30,
                      ),
                    ),
                    Tab(
                      icon: Icon(
                        Icons.assignment_ind,
                        color: Color.fromARGB(255, 41, 40, 40),
                        size: 30,
                      ),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
