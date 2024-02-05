import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  SearchPage({super.key});
  TextEditingController search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SingleChildScrollView(
      physics: const AlwaysScrollableScrollPhysics(),
      child: SafeArea(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              // decoration: BoxDecoration(color: Colors.grey),
              height: h * .06,
              width: MediaQuery.of(context).size.width,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
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
                          borderSide: const BorderSide(
                              width: 0, style: BorderStyle.none),
                        ),

                        ///-------------------------------
                        hintText: "Search"),
                  ),
                ),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  flex: 2,
                  child: SizedBox(
                    height: 262,
                    width: w,
                    child: GridView.count(
                      mainAxisSpacing: 1,
                      crossAxisSpacing: 1,
                      physics: const NeverScrollableScrollPhysics(),
                      crossAxisCount: 2,
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
                      ],
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 262,
                    width: w,
                    color: const Color.fromARGB(255, 117, 115, 115),
                  ),
                )
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                    flex: 1,
                    child: Container(
                      height: 262,
                      width: w,
                      color: const Color.fromARGB(255, 86, 85, 85),
                    )),
                Flexible(
                  flex: 2,
                  child: SizedBox(
                    height: 262,
                    width: w,
                    child: GridView.count(
                      mainAxisSpacing: 1,
                      crossAxisSpacing: 1,
                      physics: const NeverScrollableScrollPhysics(),
                      crossAxisCount: 2,
                      children: [
                        Container(
                          color: const Color.fromARGB(255, 143, 153, 162),
                          height: MediaQuery.of(context).size.height * .2,
                          width: MediaQuery.of(context).size.width * .2,
                        ),
                        Container(
                          color: const Color.fromARGB(255, 183, 189, 193),
                          height: MediaQuery.of(context).size.height * .3,
                          width: MediaQuery.of(context).size.width * .3,
                        ),
                        Container(
                          color: const Color.fromARGB(255, 193, 209, 222),
                          height: MediaQuery.of(context).size.height * .3,
                          width: MediaQuery.of(context).size.width * .3,
                        ),
                        Container(
                          color: const Color.fromARGB(255, 147, 167, 183),
                          height: MediaQuery.of(context).size.height * .3,
                          width: MediaQuery.of(context).size.width * .3,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  flex: 2,
                  child: SizedBox(
                    height: 262,
                    width: w,
                    child: GridView.count(
                      mainAxisSpacing: 1,
                      crossAxisSpacing: 1,
                      physics: const NeverScrollableScrollPhysics(),
                      crossAxisCount: 2,
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
                      ],
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 262,
                    width: w,
                    color: const Color.fromARGB(255, 86, 85, 85),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
