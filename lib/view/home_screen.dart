import 'package:chatgpt_app/components/custom_appbar_popup.dart';
import 'package:chatgpt_app/components/custom_drawer.dart';
import 'package:chatgpt_app/components/custom_optionbutton.dart';
import 'package:chatgpt_app/components/custom_sheettile.dart';
import 'package:chatgpt_app/utils/themes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _controller = TextEditingController();
  bool _showSend = false;

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      setState(() {
        _showSend = _controller.text.trim().isNotEmpty;
      });
    });
  }

  void _handleSend() {
    if (_controller.text.trim().isEmpty) return;
    print("Message Sent: ${_controller.text}");
    _controller.clear(); // ✅ Clear text after send
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Themes.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text("ChatGPT",
            style: Themes.semiBold(color: Themes.white, fontSize: 20)),
        actions: [
          Icon(Icons.note_alt_outlined, color: Themes.white),
          MoreOptionsMenu(),
          const SizedBox(width: 10),
        ],
      ),
      drawer: MyCustomDrawer(),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
          children: [

            Expanded(
              child: ListView(
                children: [
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      const Spacer(),
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Themes.darkgrey1,
                        ),
                        child: Text(
                          "What is Flutter?",
                          style: Themes.regular(
                              fontSize: 16, color: Themes.white),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "Flutter is an open-source UI (User Interface) framework developed by Google for building natively compiled applications for mobile (iOS, Android), web, and desktop from a single codebase...",
                    style: Themes.regular(fontSize: 16, color: Themes.white),
                  ),
                  const SizedBox(height: 10),
                   const SizedBox(height: 10),
                  Row(
                    children: [
                      const Spacer(),
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Themes.darkgrey1,
                        ),
                        child: Text(
                          "What is Flutter?",
                          style: Themes.regular(
                              fontSize: 16, color: Themes.white),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "Flutter is an open-source UI (User Interface) framework developed by Google for building natively compiled applications for mobile (iOS, Android), web, and desktop from a single codebase...",
                    style: Themes.regular(fontSize: 16, color: Themes.white),
                  ),
                  const SizedBox(height: 10),
                   const SizedBox(height: 10),
                  Row(
                    children: [
                      const Spacer(),
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Themes.darkgrey1,
                        ),
                        child: Text(
                          "What is Flutter?",
                          style: Themes.regular(
                              fontSize: 16, color: Themes.white),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "Flutter is an open-source UI (User Interface) framework developed by Google for building natively compiled applications for mobile (iOS, Android), web, and desktop from a single codebase...",
                    style: Themes.regular(fontSize: 16, color: Themes.white),
                  ),
                  const SizedBox(height: 10),
              
                  const SizedBox(height: 10),
                  
                  Row(
                    children: [
                      InkWell(
                        child: Icon(Icons.copy,
                            size: 20, color: Colors.grey[600]),
                        onTap: () {},
                      ),
                      const SizedBox(width: 12),
                      InkWell(
                        child: Icon(Icons.thumb_up_alt_outlined,
                            size: 20, color: Colors.grey[600]),
                        onTap: () {},
                      ),
                      const SizedBox(width: 12),
                      InkWell(
                        child: Icon(Icons.thumb_down_alt_outlined,
                            size: 20, color: Colors.grey[600]),
                        onTap: () {},
                      ),
                      const SizedBox(width: 12),
                      InkWell(
                        child: Icon(Icons.volume_up,
                            size: 20, color: Colors.grey[600]),
                        onTap: () {},
                      ),
                      const SizedBox(width: 12),
                      InkWell(
                        child: Icon(Icons.loop,
                            size: 20, color: Colors.grey[600]),
                        onTap: () {},
                      ),
                      const SizedBox(width: 12),
                      InkWell(
                        child: Icon(Icons.share,
                            size: 20, color: Colors.grey[600]),
                        onTap: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),

      
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      backgroundColor: Colors.black87,
                      shape: const RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(20)),
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
                                      onTap: () {}),
                                  OptionButton(
                                      icon:
                                          Icons.photo_size_select_actual_outlined,
                                      label: "Photos",
                                      onTap: () {}),
                                  OptionButton(
                                      icon: Icons.attach_file,
                                      label: "Files",
                                      onTap: () {}),
                                ],
                              ),
                              const SizedBox(height: 20),
                              BottomSheetTile(
                                  icon: Icons.lightbulb_outline,
                                  label: "Think longer",
                                  onTap: () {}),
                              BottomSheetTile(
                                  icon: Icons.search,
                                  label: "Deep research",
                                  onTap: () {}),
                              BottomSheetTile(
                                  icon: Icons.menu_book_outlined,
                                  label: "Study and learn",
                                  onTap: () {}),
                              BottomSheetTile(
                                  icon: Icons.image_outlined,
                                  label: "Create image",
                                  onTap: () {}),
                              BottomSheetTile(
                                  icon: Icons.public,
                                  label: "Web search",
                                  onTap: () {}),
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
                      color: Themes.darkgrey1,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            controller: _controller,
                            decoration: InputDecoration(
                              hintText: "Ask anything",
                              hintStyle: Themes.semiBold(
                                fontSize: 14,
                                color: Themes.grey,
                              ),
                              border: InputBorder.none,
                              contentPadding: const EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 8,
                              ),
                            ),
                            style: Themes.regular(
                              fontSize: 14,
                              color: Themes.white,
                            ),
                          ),
                        ),
                        Icon(Icons.mic_none_outlined, color: Themes.grey),
                        const SizedBox(width: 12),

                
                        _showSend
                            ? GestureDetector(
                                onTap: _handleSend,
                                child: const Icon(Icons.arrow_upward,
                                    color: Colors.white, size: 26),
                              )
                            : Icon(Icons.voice_chat , color: Themes.grey,)
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
