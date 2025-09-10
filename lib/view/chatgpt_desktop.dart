import 'package:flutter/material.dart';
import 'package:chatgpt_app/utils/themes.dart';
import 'package:chatgpt_app/components/custom_sidebar.dart';
import 'package:chatgpt_app/components/custom_appbar_popup.dart';
import 'package:chatgpt_app/components/custom_optionbutton.dart';
import 'package:chatgpt_app/components/custom_sheettile.dart';

class ChatgptDesktop extends StatelessWidget {
  const ChatgptDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Themes.darkgrey1,
      body: SafeArea(
        child: Row(
          children: [
            SizedBox(
              width: 250,
        child: const CustomSidebar(),),

            // 🔹 Right Chat Area
            Expanded(
              child: Column(
                children: [
                  // ✅ Custom AppBar (GPT style)
                  Container(
                    height: 56,
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    color: Themes.darkgrey1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("ChatGPT",
                            style: Themes.semiBold(
                                color: Themes.white, fontSize: 22)),
                        Row(
                          children: [
                            const Icon(Icons.arrow_upward_sharp,
                                color: Colors.white),
                            const SizedBox(width: 10),
                            MoreOptionsMenu(),
                          ],
                        ),
                      ],
                    ),
                  ),

                  // ✅ Chat Messages
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: ListView(
                        children: [
                          // Example: User bubble
                          Row(
                            children: [
                              const Spacer(),
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: Themes.darkgrey,
                                ),
                                child: Text(
                                  "What is Flutter?",
                                  style: Themes.regular(
                                      fontSize: 18, color: Themes.white),
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(height: 20),

                          // Example: Bot answer
                          Text(
                            """📌 What is Flutter?

Flutter is an open-source UI Software Development Kit (SDK) created by Google. It is used to build cross-platform applications — meaning you can use a single codebase to create apps for:

Android

iOS

Web

Desktop (Windows, macOS, Linux)

Embedded devices

📌 Why Flutter is Popular?

Single Codebase → Write once, run anywhere (Android, iOS, Web, Desktop).

Fast Development (Hot Reload) → Changes in code reflect instantly without restarting the app.

Beautiful UIs → Provides powerful UI widgets to make modern, smooth, and responsive designs.

High Performance → Uses the Dart language (also by Google) and compiles to native machine code, so apps run fast (not like web-wrapped apps).

Strong Community & Google Support → Constantly updated and widely adopted.

📌 How Flutter Works?

Flutter apps are written in Dart programming language.

Flutter has its own rendering engine (Skia) → It doesn’t rely on native UI components (unlike React Native). Instead, it draws every pixel itself, which gives developers full control over design and performance.

This is why Flutter apps look consistent across all platforms.

📌 Key Components of Flutter

Dart Language → Main programming language used in Flutter (easy to learn, object-oriented).

Widgets → Everything in Flutter is a widget (buttons, text, layouts, even the entire screen).

Two types of widgets:

Stateless Widgets → Static, do not change (e.g., Text, Icon).

Stateful Widgets → Can change dynamically (e.g., forms, sliders, counters).

Material Design & Cupertino → Pre-built widgets for Android (Material) and iOS (Cupertino) style apps.

Hot Reload → Quickly refresh the app with new code without restarting.

Packages & Plugins → Huge ecosystem of community and official plugins (e.g., Firebase, Camera, Maps).""",
                            style: Themes.regular(
                                fontSize: 18, color: Themes.white),
                          ),

                          const SizedBox(height: 10),

                          // Action icons row
                          Row(
                            children: [
                              InkWell(
                                child: Icon(Icons.copy,
                                    size: 20, color: Colors.grey[600]),
                                    onTap: (){},
                              ),
                              const SizedBox(width: 12),
                              InkWell(
                                child: Icon(Icons.thumb_up_alt_outlined,
                                    size: 20, color: Colors.grey[600]),
                                    onTap: (){},
                              ),
                              const SizedBox(width: 12),
                              InkWell(
                                child: Icon(Icons.thumb_down_alt_outlined,
                                    size: 20, color: Colors.grey[600]),
                                    onTap: (){},
                              ),
                              const SizedBox(width: 12),
                              InkWell(
                                child: Icon(Icons.volume_up,
                                    size: 20, color: Colors.grey[600]),
                                    onTap: (){},
                              ),
                              const SizedBox(width: 12),
                              InkWell(
                                child: Icon(Icons.loop,
                                    size: 20, color: Colors.grey[600]),
                                    onTap: (){},
                              ),
                              const SizedBox(width: 12),
                              InkWell(
                                child: Icon(Icons.share,
                                    size: 20, color: Colors.grey[600]),
                                    onTap: (){},
                              ),
                            ],
                          ),

                          const Divider(color: Colors.white24, height: 30),
                        ],
                      ),
                    ),
                  ),

                  // ✅ Bottom Input Area
                  Container(
                    padding: const EdgeInsets.all(12),
                    color: Themes.darkgrey1,
                    child: Row(
                      children: [
                        // Left Add Button (open sheet)
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
                                       BottomSheetTile(
                                          icon: Icons.attach_file,
                                          label: "Add photos & files",
                                          onTap: () {}),
                                          Divider(color: Themes.darkgrey,),
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
                            ),
                            child: const Icon(Icons.add, color: Colors.white),
                          ),
                        ),

                        const SizedBox(width: 12),

                        // TextField
                        Expanded(
                          child: Container(
                            height: 50,
                            padding:
                                const EdgeInsets.symmetric(horizontal: 12),
                            decoration: BoxDecoration(
                              color: Themes.darkgrey,
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: "Ask anything",
                                      hintStyle: Themes.semiBold(
                                        fontSize: 18,
                                        color: Themes.grey,
                                      ),
                                      border: InputBorder.none,
                                    ),
                                    style: Themes.regular(
                                      fontSize: 18,
                                      color: Themes.white,
                                    ),
                                  ),
                                ),
                                const Icon(Icons.mic_none_outlined,
                                    color: Colors.grey),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
