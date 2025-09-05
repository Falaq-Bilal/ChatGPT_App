import 'package:chatgpt_app/componenets/custom_whitebutton.dart';
import 'package:chatgpt_app/utils/themes.dart';
import 'package:chatgpt_app/view/settings_screen.dart';
import 'package:flutter/material.dart';

class UpgradeScreen extends StatelessWidget {
  const UpgradeScreen({super.key});

  @override
  Widget build(BuildContext context) { 
    return Scaffold( backgroundColor: Themes.black,
      appBar: AppBar(scrolledUnderElevation: 0,backgroundColor: Themes.black,leading: IconButton(icon:Icon(Icons.arrow_back , color: Themes.white,), onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> SettingsScreen()));
      },) ,),

      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: ListView(
                children: [
                  Row(
                    children:[ Text(
                      "ChatGPT",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Themes.white,
                      ),
                      
                    ),
                    SizedBox(width: 10,),
                    Text(
                      "Plus",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Themes.blue1,
                      ),
                      
                    ),

                ]),

                  SizedBox(height: 8),

                  Text(
                    "Get more access with advanced intelligence and agents",
                    style: TextStyle(fontSize: 15, color: Themes.white),
                  ),

                  SizedBox(height: 20),
                  Row(
                    children: [
                      Text(
                        "Features",
                        style: TextStyle(fontSize: 15, color: Themes.darkgrey),
                      ),
                      Spacer(),
                      Text(
                        "Free",
                        style: TextStyle(fontSize: 15, color: Themes.darkgrey),
                      ),
                      SizedBox(width: 15),
                      Text(
                        "Plus",
                        style: TextStyle(fontSize: 15, color: Themes.blue1),
                      ),
                    ],
                  ),
                  SizedBox(height: 25),
                  Row(
                    children: [
                      Text(
                        "Access to GPT-5",
                        style: TextStyle(fontSize: 17, color: Themes.white),
                      ),
                      Spacer(),
                      Icon(Icons.remove , color: Themes.white,),
                      SizedBox(width: 15),
                      Icon(Icons.done, color: Themes.blue1),
                    ],
                  ),
                  SizedBox(height: 25),
                  Row(
                    children: [
                      Text(
                        "Advanced reasoning",
                        style: TextStyle(fontSize: 17, color: Themes.white),
                      ),
                      Spacer(),
                      Icon(Icons.remove , color: Themes.white,),
                      SizedBox(width: 15),
                      Icon(Icons.done, color: Themes.blue1),
                    ],
                  ),
                  SizedBox(height: 25),
                  Row(
                    children: [
                      Text(
                        "More messages and uploads",
                        style: TextStyle(fontSize: 17, color: Themes.white),
                      ),
                      Spacer(),
                      Icon(Icons.remove , color: Themes.white,),
                      SizedBox(width: 15),
                      Icon(Icons.done, color: Themes.blue1),
                    ],
                  ),
                  SizedBox(height: 25),
                  Row(
                    children: [
                      Text(
                        "More image creation",
                        style: TextStyle(fontSize: 17, color: Themes.white),
                      ),
                      Spacer(),
                      Icon(Icons.remove , color: Themes.white,),
                      SizedBox(width: 15),
                      Icon(Icons.done, color: Themes.blue1),
                    ],
                  ),
                  SizedBox(height: 25),
                  Row(
                    children: [
                      Text(
                        "More memory",
                        style: TextStyle(fontSize: 17, color: Themes.white),
                      ),
                      Spacer(),
                      Icon(Icons.remove , color: Themes.white,),
                      SizedBox(width: 15),
                      Icon(Icons.done, color: Themes.blue1),
                    ],
                  ),
                  SizedBox(height: 25),
                  Row(
                    children: [
                      Text(
                        "Early access to new features",
                        style: TextStyle(fontSize: 17, color: Themes.white),
                      ),
                      Spacer(),
                      Icon(Icons.remove , color: Themes.white,),
                      SizedBox(width: 15),
                      Icon(Icons.done, color: Themes.blue1),
                    ],
                  ),
                  SizedBox(height: 25),
                  Row(
                    children: [
                      Text(
                        "Agent mode with deep research",
                        style: TextStyle(fontSize: 17, color: Themes.white),
                      ),
                      Spacer(),
                      Icon(Icons.remove , color: Themes.white,),
                      SizedBox(width: 15),
                      Icon(Icons.done, color: Themes.blue1),
                    ],
                  ),
                  SizedBox(height: 25),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Themes.black,
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(20),
              ),
             
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Restore subsriptions",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Themes.white,
                  ),
                ),
                SizedBox(height: 7),
                WhiteButton(text: "Upgrade to Plus", onPressed: () {}),
                SizedBox(height: 10),
                Text(
                  "Renews for Rs 5,700.00/month. Cancel anytime.",
                  style: TextStyle(fontSize: 14, color: Themes.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
