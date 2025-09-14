import 'package:chatgpt_app/components/custom_dialog_desktop.dart';
import 'package:chatgpt_app/components/custom_search.dart';
import 'package:chatgpt_app/components/custom_settings_desktop.dart';
import 'package:chatgpt_app/utils/themes.dart';
import 'package:chatgpt_app/view/library_screen.dart';
import 'package:chatgpt_app/view/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomSidebar extends StatelessWidget {
  const CustomSidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Themes.black,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 15,), 
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    leading: Icon(Icons.note_alt_outlined, color: Themes.white),
                    title: Text(
                      "New Chat",
                      style: Themes.regular(fontSize: 18, color: Themes.white),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.search, color: Themes.white),
                    title: Text(
                      "Search",
                      style: Themes.regular(fontSize: 18, color: Themes.white),
                    ),
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) => const SearchDialog(),
                      );
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.library_music, color: Themes.white),
                    title: Text(
                      "Library",
                      style: Themes.regular(fontSize: 18, color: Themes.white),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LibraryScreen(),
                        ),
                      );
                    },
                  ),

                  SizedBox(height: 12,), 
                  ListTile(
                    leading: 
                   Icon(Icons.play_circle_outline, color: Themes.white),
                  
                    title: Text(
                      "Sora",
                      style: Themes.regular(color: Themes.white, fontSize: 18),
                    ),
                    onTap: ()async{
                      final Uri url = Uri.parse("https://sora.chatgpt.com/explore");
                      await launchUrl(url);
                    },
                  ),
                  ListTile(
                    leading: Image(
                      image: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSEWm9r6BEttA05IH0uOlgQ_hfFOwbkNB4bsg&s",
                      ),
                      height: 20,
                      fit: BoxFit.fill,
                    ),
                    title: Text(
                      "GPTs",
                      style: Themes.regular(fontSize: 18, color: Themes.white),
                    ),
                  ),

                  
                  const SizedBox(height: 15),
                   ListTile(
                    title: Text(
                      "Chats",
                      style: Themes.regular(fontSize: 15, color: Themes.grey),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      "What are widgets?",
                      style: Themes.regular(fontSize: 18, color: Themes.white),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      "Role of Scaffold in Flutter",
                      style: Themes.regular(fontSize: 18, color: Themes.white),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      "Difference between stateful and stateless widget",
                      style: Themes.regular(fontSize: 18, color: Themes.white),
                    ),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                BottomLeftDialog.show(context);
              },
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Themes.black,
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 5,
                      offset: Offset(0, -2),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 24,
                      backgroundColor: Themes.darkgrey,
                      child: Text(
                        "FA",
                        style: Themes.regular(fontSize: 20, color: Themes.white),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Falaq",
                          style: Themes.semiBold(
                            fontSize: 18,
                            color: Themes.white,
                          ),
                        ),
                      ],
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
