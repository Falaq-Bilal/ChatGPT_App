
import 'package:chatgpt_app/components/custom_language.dart';
import 'package:chatgpt_app/utils/themes.dart';
import 'package:chatgpt_app/view/settings_screen.dart';
import 'package:chatgpt_app/view/voice_screen_2.dart';
import 'package:flutter/material.dart';

class VoiceScreen extends StatelessWidget {
  const VoiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Themes.black,
      appBar: AppBar(
        backgroundColor: Themes.black,
        scrolledUnderElevation: 0,
        leading: IconButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> SettingsScreen()));}, icon: Icon(Icons.arrow_back , color: Themes.white,)),
        title: Text("Speech" ,   style: Themes.regular(color: Themes.white)),
      ),
      body: ListView(children: [
          LanguageTile(), 
        ListTile(
          title: Text("For best results, select the language you mainly speak. If its's not listed, it may still be supported via auto-detection." , style: Themes.regular(fontSize: 15 , color: Themes.white),),
     
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Themes.black,
            child: Icon(Icons.voice_chat , color: Themes.white,),
          ),
          title: Text("Voice" , style: Themes.regular(color: Themes.white)),
          subtitle: Text("Breeze" , style: Themes.regular(color: Themes.white)),
          onTap: (){Navigator.pop(context);
          Navigator.push(context, MaterialPageRoute(builder: (context)=>VoiceScreen2()));},
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Themes.black,
            child: Icon(Icons.chat_bubble_outline_outlined , color: Themes.white,),
          ),
          title: Text("Background Conversations" , style: Themes.regular(color: Themes.white)),
          subtitle: Text("Keep the conversation going in other apps or while your screen is off." , style: Themes.regular(color: Themes.white)),
          trailing: Container(
                        height: 25,
                        width: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color:Themes.darkgrey
                        ),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
        ),

        ListTile(
          leading: CircleAvatar(
            backgroundColor: Themes.black,
            child: Icon(Icons.blur_circular , color: Themes.white,),
          ),
          title: Text("Use as Default Assistant" , style: Themes.regular(color: Themes.white)),
          subtitle: Text("Set ChatGPT as your default digital assistant in your Android settings." , style: Themes.regular(color: Themes.white)),
          trailing: Container(
                        height: 25,
                        width: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Themes.darkgrey
                        ),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
        )
      ],),
    );
  }
}