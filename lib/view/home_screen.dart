import 'package:chatgpt_app/componenets/custom_appbar_popup.dart';
import 'package:chatgpt_app/componenets/custom_drawer.dart';
import 'package:chatgpt_app/componenets/custom_optionbutton.dart';
import 'package:chatgpt_app/componenets/custom_sheettile.dart';
import 'package:chatgpt_app/utils/themes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Themes.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(
          color: Colors.white,
        ), // drawer icon white

        title: Text("ChatGPT" , style: TextStyle(color: Themes.white)),
        actions: [
          Icon(Icons.note_alt_outlined , color: Themes.white,),
          SizedBox(width: 10),
          MoreOptionsMenu(),
          SizedBox(width: 10,),
        ],
      ),

      drawer: MyCustomDrawer(),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            Row(
              children: [
                Spacer(),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Themes.darkgrey,
                  ),
                  child: Text(
                    "What is Flutter?",
                    style: TextStyle(fontSize: 16, color: Themes.white),
                  ),
                ),
              ],
            ),

            SizedBox(height: 20),
            Text(
              "Flutter is an open-source UI (User Interface) framework developed by Google for building natively compiled applications for mobile (iOS, Android), web, and desktop from a single codebase. In simpler terms, it allows developers to write one code and run it almost anywhere.",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color: Themes.white,
              ),
            ),
            SizedBox(height: 15),
            Row(
              children: [
                Icon(Icons.copy, size: 20, color: Colors.grey[600]),
                SizedBox(width: 12),
                Icon(
                  Icons.thumb_up_alt_outlined,
                  size: 20,
                  color: Colors.grey[600],
                ),
                SizedBox(width: 12),
                Icon(
                  Icons.thumb_down_alt_outlined,
                  size: 20,
                  color: Colors.grey[600],
                ),
                SizedBox(width: 12),
                Icon(Icons.volume_up, size: 20, color: Colors.grey[600]),
                SizedBox(width: 12),
                Icon(Icons.loop, size: 20, color: Colors.grey[600]),
                SizedBox(width: 12),
                Icon(Icons.share, size: 20, color: Colors.grey[600]),
              ],
            ),
            Spacer(),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      backgroundColor: Colors.black87,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(20),
                        ),
                      ),
                      builder: (context) {
                        return Padding(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  OptionButton(
                                    icon: Icons.camera_alt_outlined,
                                    label: "Camera",
                                    onTap: () {},
                                  ),
                                  OptionButton(
                                    icon:
                                        Icons.photo_size_select_actual_outlined,
                                    label: "Photos",
                                    onTap: () {},
                                  ),
                                  OptionButton(
                                    icon: Icons.attach_file,
                                    label: "Files",
                                    onTap: () {},
                                  ),
                                ],
                              ),
                              const SizedBox(height: 20),
                              BottomSheetTile(
                                icon: Icons.lightbulb_outline,
                                label: "Think longer",
                                onTap: () {},
                              ),
                              BottomSheetTile(
                                icon: Icons.search,
                                label: "Deep research",
                                onTap: () {},
                              ),
                              BottomSheetTile(
                                icon: Icons.menu_book_outlined,
                                label: "Study and learn",
                                onTap: () {},
                              ),
                              BottomSheetTile(
                                icon: Icons.image_outlined,
                                label: "Create image",
                                onTap: () {},
                              ),
                              BottomSheetTile(
                                icon: Icons.public,
                                label: "Web search",
                                onTap: () {},
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Themes.darkgrey,
                      borderRadius: BorderRadius.circular(25),
                      image: const DecorationImage(
                        image: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8sbH-eax-Z_6uNPmkuRX7WRWcAtn7s4WlLw&s",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),

                const SizedBox(width: 12),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    height: 50,
                    decoration: BoxDecoration(
                      color: Themes.darkgrey,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Row(
                      children: [
                        // Placeholder text
                        Expanded(
                          child: Text(
                            "Ask anything",
                            style: TextStyle(
                              fontSize: 14,
                              color: Themes.grey,
                            ),
                          ),
                        ),
                        Icon(
                          Icons.mic_none_outlined,
                          color: Themes.grey,
                        ),
                        const SizedBox(width: 12),

                        // Extra Icon
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: const DecorationImage(
                              image: NetworkImage(
                                "https://tse3.mm.bing.net/th/id/OIP.sHiG4BlOQFCiZ92-VSKoAwHaCx?pid=Api&P=0&h=220"
                              ),
                            fit: BoxFit.fitHeight
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
