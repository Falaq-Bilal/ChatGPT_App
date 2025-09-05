import 'package:chatgpt_app/componenets/custom_whitebutton.dart';
import 'package:chatgpt_app/utils/themes.dart';
import 'package:chatgpt_app/view/home_screen.dart';
import 'package:flutter/material.dart';


class ShareScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeScreen()));
        }, icon: Icon(Icons.arrow_back , color: Themes.white,)),
        title: Text(
          "Share link to chat",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Messages sent or received after sharing your link won't be shared. Anyone with the URL will be able to view your shared chat.",
              style: TextStyle(color: Themes.white, fontSize: 14),
            ),
            SizedBox(height: 10),
            Text(
              "Recipients won’t be able to view your custom profiles.",
              style: TextStyle(color: Themes.white, fontSize: 14),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.grey[800],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        "What is flutter?",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Flutter is an open-source UI (User Interface) framework developed by Google for building natively compiled applications...",
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "What is Flutter\nAnonymous · 2 Sept 2025 3:59:48 pm",
                    style: TextStyle(color: Themes.white, fontSize: 12),
                  ),
                ],
              ),
            ),
            Spacer(),
            WhiteButton(iconPath: "https://tse3.mm.bing.net/th/id/OIP.Smlk5CvO1xoHxA1d2FQxJQHaHa?pid=Api&P=0&h=220",text: "Share LInk", onPressed: (){})
          ],
        ),
      ),
    );
  }
}
