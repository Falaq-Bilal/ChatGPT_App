
import 'package:chatgpt_app/components/custom_archive.dart';
import 'package:chatgpt_app/components/custom_clearchat.dart';
import 'package:chatgpt_app/components/custom_delete_acc.dart';
import 'package:chatgpt_app/components/custom_export.dart';
import 'package:chatgpt_app/utils/themes.dart';
import 'package:chatgpt_app/view/settings_screen.dart';
import 'package:flutter/material.dart';

class DataControlScreen extends StatelessWidget {
  const DataControlScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Themes.black,
      appBar: AppBar(
        backgroundColor: Themes.black,
        scrolledUnderElevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SettingsScreen()),
            );
          },
          icon: Icon(Icons.arrow_back , color: Themes.white,),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: ListView(
          children: [
            ListTile(
              title: Text("Improve the model for everyone" , style: Themes.regular(color: Themes.white),),
              trailing: Container(
                height: 25,
                width: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Themes.white
                ),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Themes.black
                    ),
                  ),
                ),
              ),
            ),
            ListTile(
              title: Text(
                "Allow your content to be used to train our models, which makes ChatGPT better for you and everyone who uses it. We take steps to protect your privacy. Learn more",
                style: Themes.regular(fontSize: 15, color: Themes.white),
              ),
            ),
            SizedBox(height: 7),
            ListTile(
              title: Text(
                "Voice Mode",
                style: Themes.semiBold(
                
                 // fontWeight: FontWeight.bold,
                  color: Themes.white,
                ),
              ),
            ),
            SizedBox(height: 15),

            ListTile(
              title: Text("Include your audio recordings" , style: Themes.regular(color: Themes.white)),
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
            ),

            SizedBox(height: 15),
            ListTile(
              title: Text(
                "Include your audio recordings from voice mode to train our models. Transcripts and other files are covered by Improve the model for everyone. Learn more",
                style: Themes.regular(fontSize: 15, color: Themes.white),
              ),
            ),
            SizedBox(height: 15),
            ListTile(
              title: Text(
                "Chat History",
                style: Themes.regular(
                  fontSize: 12,
                //  fontWeight: FontWeight.bold,
                  color: Themes.white
                ),
              ),
            ),
            SizedBox(height: 15),
            ListTile(title: Text("View archived Chats"  , style: Themes.regular(color: Themes.white))),
            SizedBox(height: 15),
            CustomArchive(),
            SizedBox(height: 15),
            CustomClearchat(),
            SizedBox(height: 15),
            ListTile(
              title: Text(
                "Account",
                style: Themes.semiBold(
                  fontSize: 12,
                //  fontWeight: FontWeight.bold,
                  color: Themes.white,
                ),
              ),
            ),
            SizedBox(height: 15),
            CustomExport(),
            SizedBox(height: 15),
            CustomDeleteAcc(),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
