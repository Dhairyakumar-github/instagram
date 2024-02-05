import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List story = [
    "assets/images/person1.jpg",
    "assets/images/person5.jpg",
    "assets/images/person6.jpg",
    "assets/images/person2.jpg",
    "assets/images/person3.jpg",
    "assets/images/person4.jpg",
  ];

  List storyname = [
    "Your Story",
    "Jose Davila",
    "Dean Ryan",
    "Kasey Horn",
    "Anne Luna",
    "Joey Franco"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: BottomNavigationBarr(),
      body: SafeArea(
        child: PageView(
            scrollDirection: Axis.horizontal,
            children: [MainPage(), ChatPage()]),
      ),
    );
  }

  SingleChildScrollView ChatPage() {
    TextEditingController search = TextEditingController();
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.arrow_back_sharp,
                    size: 35,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "alen_frek",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down_rounded,
                    size: 35,
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.video_call_outlined,
                    size: 32,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.edit,
                    size: 32,
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: h * .065,
            width: MediaQuery.of(context).size.width,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Center(
                child: TextField(
                  // textAlign: TextAlign.ce,
                  textAlignVertical: TextAlignVertical.bottom,
                  style: const TextStyle(
                    fontSize: 21,
                  ),
                  controller: search,
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.search),
                      filled: true,
                      fillColor: const Color.fromARGB(255, 205, 209, 211),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10)),
                      disabledBorder: InputBorder.none,
                      ////----------------------------
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            const BorderSide(width: 0, style: BorderStyle.none),
                      ),

                      ///-------------------------------
                      hintText: "Search"),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Messages",
                  style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
                ),
                Text(
                  "Requests",
                  style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.w500,
                      color: Colors.blue),
                ),
              ],
            ),
          ),
          chats(
              image: "assets/images/person5.jpg",
              name: "Jose Davila",
              message: "Seen 5h ago"),
          chats(
              image: "assets/images/person6.jpg",
              name: "Dean Ryan",
              message: "Last seen 2h ago..."),
          chats(
              image: "assets/images/person2.jpg",
              name: "Kasey Horn",
              message: "Sent 6h ago"),
          chats(
              image: "assets/images/person3.jpg",
              name: "Anne Luna",
              message: "Sent a reel..."),
          chats(
              image: "assets/images/person4.jpg",
              name: "Joey Franco",
              message: "Sent a reel..."),
        ],
      ),
    );
  }

  ListTile chats({required image, required name, required message}) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(image),
        radius: 22,
      ),
      title: Text(name),
      subtitle: Text(message),
      trailing: const Icon(Icons.camera_alt_outlined),
    );
  }

/////////////////----------------------------------------------
  SingleChildScrollView MainPage() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Instagram",
                  style: TextStyle(fontSize: 28, fontFamily: "Instagram"),
                ),
                Row(
                  children: [
                    Image.asset("assets/images/heart.png", height: 25),
                    const SizedBox(
                      width: 20,
                    ),
                    Image.asset(
                      "assets/images/chat_icon.png",
                      height: 24,
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 90,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: story.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      // padding: EdgeInsets.all(2),
                      decoration: const BoxDecoration(
                        // border: Border.all(
                        //   width: 4,
                        //   // color: Colors.black,
                        // ),
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xff9b2282),
                            Color(0xffeea863),
                          ],
                        ),
                      ),
                      height: 70,
                      width: 89,
                      child: Container(
                        margin: const EdgeInsets.all(3.5),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                              color: const Color.fromARGB(255, 255, 255, 255),
                              width: 2.5),
                        ),
                        child: CircleAvatar(
                          radius: 30,
                          foregroundImage: AssetImage(story[index].toString()),
                        ),
                      ),
                    ),
                    Text(
                      storyname[index].toString(),
                      softWrap: true,
                    )
                  ],
                );
              },
            ),
          ),
          const Divider(
            thickness: 0.5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
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
                        height: 40,
                        width: 59,
                        child: const Padding(
                          padding: EdgeInsets.all(4),
                          child: CircleAvatar(
                            // radius: 50,
                            foregroundImage:
                                AssetImage("assets/images/person6.jpg"),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Text(
                    "Dean Ryan",
                    style: TextStyle(fontSize: 18),
                  )
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Icon(Icons.more_vert),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          //
          Container(
            width: double.infinity,
            child: Image.asset(
              "assets/images/post1.jpg",
              fit: BoxFit.contain,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  children: [
                    Image.asset("assets/images/heart.png", height: 25),
                    const SizedBox(
                      width: 20,
                    ),
                    Image.asset("assets/images/comment.png", height: 25),
                    const SizedBox(
                      width: 20,
                    ),
                    Image.asset("assets/images/share_icon.png", height: 27),
                    const SizedBox(
                      width: 20,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Image.asset("assets/images/save.png", height: 25),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  width: 50,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 25,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border:
                                  Border.all(color: Colors.white, width: 3)),
                          child: const CircleAvatar(
                            radius: 9,
                            backgroundImage:
                                AssetImage("assets/images/person3.jpg"),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 14,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border:
                                  Border.all(color: Colors.white, width: 3)),
                          child: const CircleAvatar(
                            radius: 9,
                            backgroundImage:
                                AssetImage("assets/images/person2.jpg"),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                                color: const Color.fromARGB(255, 255, 255, 255),
                                width: 3)),
                        child: const CircleAvatar(
                          radius: 9,
                          backgroundImage:
                              AssetImage("assets/images/person5.jpg"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Text(
                "Liked by Jose Davila and 155 others",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
              )
            ],
          ),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 12, top: 5),
                child: Text(
                  "Dean Ryan",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8, top: 5),
                child: Text(
                  "Beauty of nature...",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 13),
            child: Text("View all 36 comments..."),
          ),
          // Post 2
          const SizedBox(
            height: 10,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: CircleAvatar(
                          radius: 17,
                          foregroundImage:
                              AssetImage("assets/images/person2.jpg"),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "Kasey Horn",
                    style: TextStyle(fontSize: 18),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Icon(Icons.more_vert),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          const SizedBox(
            height: 5,
          ),
          //
          Container(
            width: double.infinity,
            height: 400,
            child: Image.asset(
              "assets/images/post2.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  children: [
                    Image.asset("assets/images/heart.png", height: 25),
                    const SizedBox(
                      width: 20,
                    ),
                    Image.asset("assets/images/comment.png", height: 25),
                    const SizedBox(
                      width: 20,
                    ),
                    Image.asset("assets/images/share_icon.png", height: 27),
                    const SizedBox(
                      width: 20,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Image.asset("assets/images/save.png", height: 25),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  width: 50,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 25,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border:
                                  Border.all(color: Colors.white, width: 3)),
                          child: const CircleAvatar(
                            radius: 9,
                            backgroundImage:
                                AssetImage("assets/images/person3.jpg"),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 14,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border:
                                  Border.all(color: Colors.white, width: 3)),
                          child: const CircleAvatar(
                            radius: 9,
                            backgroundImage:
                                AssetImage("assets/images/person2.jpg"),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                                color: const Color.fromARGB(255, 255, 255, 255),
                                width: 3)),
                        child: const CircleAvatar(
                          radius: 9,
                          backgroundImage:
                              AssetImage("assets/images/person5.jpg"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Text(
                "Liked by Anne Luna and 261 others",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
              )
            ],
          ),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 12, top: 5),
                child: Text(
                  "Kasey Horn",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8, top: 5),
                child: Text(
                  "Egypt...",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 13),
            child: Text("View all 42 comments..."),
          ),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
