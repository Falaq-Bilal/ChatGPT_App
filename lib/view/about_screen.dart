import 'package:chatgpt_app/utils/themes.dart';
import 'package:chatgpt_app/view/settings_screen.dart';
import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Themes.black,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: Themes.black,
        leading: IconButton(onPressed: (){Navigator.pop(context);
        Navigator.push(context, MaterialPageRoute(builder: (context)=> SettingsScreen()));}, icon: Icon(Icons.arrow_back, color: Themes.white,)),
        title: Text("About" , style: TextStyle(color: Themes.white),),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.help_outline , color: Themes.white,),
              backgroundColor: Themes.black,
            ),
            title: Text("Help Center" , style: TextStyle(color: Themes.white),),
          ),
          SizedBox(height: 12,),
           ListTile(
            leading: CircleAvatar(
              backgroundColor: Themes.black,
              child: Icon(Icons.menu_book_rounded , color: Themes.white,),
            ),
            title: Text("Terms of Use" , style: TextStyle(color: Themes.white),),
          ),
          SizedBox(height: 12,),
           ListTile(
            leading: CircleAvatar(
              backgroundColor: Themes.black,
              child: Image(image: NetworkImage("data:image/png;base64,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"),fit: BoxFit.fill,)
            ),
            title: Text("Privacy Policy" , style: TextStyle(color: Themes.white),),
          ),
          SizedBox(height: 12,),
           ListTile(
            leading: CircleAvatar(
              backgroundColor: Themes.black,
              child: Icon(Icons.book , color: Themes.white,),
            ),
            title: Text("Licenses" , style: TextStyle(color: Themes.white),),
          ),
          SizedBox(height: 12,),
           ListTile(
            leading: CircleAvatar(
              backgroundColor: Themes.black,
              child: Icon(Icons.circle_outlined , color: Themes.white,),
            ),
            title: Text("ChatGPT for Android" , style: TextStyle(color: Themes.white),),
            subtitle: Text("1.2025.238(9)" , style: TextStyle(color: Themes.white),),
          ),
        ],
      ),
    );
  }
}