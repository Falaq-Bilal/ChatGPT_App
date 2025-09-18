
import 'package:chatgpt_app/components/custom_blackbutton.dart';
import 'package:chatgpt_app/utils/themes.dart';
import 'package:chatgpt_app/view/personalized_screen.dart';
import 'package:flutter/material.dart';

class MemoryScreen extends StatelessWidget {
  const MemoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Themes.black,
      appBar: AppBar(
        backgroundColor: Themes.black,
        scrolledUnderElevation: 0,
        title: Text("Memory"  , style: Themes.semiBold(color: Themes.white),),
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PersonalizedScreen()),
            );
          },
          icon: Icon(Icons.arrow_back , color: Themes.white,),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: ListView(
          children: [
            ListTile(title: Text("Custom Instructions" , style: Themes.regular(color: Themes.white),), trailing: Text("On" , style: Themes.regular(color: Themes.white))),
        
            ListTile(
              title: Text("Reference Saved Memories" , style: Themes.regular(color: Themes.white)),
              trailing: Container(
                height: 25,
                width: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Themes.darkgrey,
                ),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Themes.white,
                    ),
                  ),
                ),
              ),
            ),
        
            ListTile(
              title: Text("Lets ChatGPT save and use memories when responding." , style: Themes.regular(color: Themes.white)),
              subtitle: Text("Learn more"  , style: Themes.regular(color: Themes.white)),
            ),
        
            BlackButton(text: "Manage Memories", onPressed: () {}),
        
            ListTile(
              title: Text("Reference Chat History" , style: Themes.regular(color: Themes.white)),
              trailing: Container(
                height: 25,
                width: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Themes.darkgrey,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Themes.white,
                    ),
                  ),
                ),
              ),
            ),
        
            ListTile(
              title: Text("Lets ChatGPT reference recent conversations when responding.Learn more" , style: Themes.regular(color: Themes.white)),
            )
          ],
        ),
      ),
    );
  }
}
