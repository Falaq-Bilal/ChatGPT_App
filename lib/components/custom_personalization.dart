import 'package:chatgpt_app/utils/themes.dart';
import 'package:flutter/material.dart';

class CustomPersonalization extends StatelessWidget {
  const CustomPersonalization({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Themes.darkgrey1,
      padding: const EdgeInsets.all(16),
      child: 
      SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Personalization" , style: Themes.regular(color: Themes.white , fontSize: 18),),
            Divider(color: Colors.white24),
        
            SizedBox(height: 15,),
            ListTile(
              title: Text("Custom Instructions" , style: Themes.regular(color: Themes.white),),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("On", style: Themes.regular(color: Themes.white),),
                  SizedBox(width: 4,),
                  Icon(Icons.arrow_forward_ios , color: Themes.white,)
                ],
              ),
            ),
        
            SizedBox(height: 25,),
            ListTile(
              title: Text("Memory" , style: Themes.regular(fontSize: 16 , color: Themes.white),),
            ),
            Divider(color: Colors.white24,),
            ListTile(
              title: Text("Reference saved memories" , style: Themes.semiBold(fontSize: 14 , color: Themes.white),),
              subtitle: Text("Let ChatGPT save and use memories when responding." ,style: Themes.regular(color: Themes.grey),),
              trailing: Container(
                          height: 25,
                          width: 45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Themes.blue,
                          ),
                          child: Align(
                            alignment: Alignment.centerRight,
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
            Divider(color: Colors.white24,),
            ListTile(
              title: Text("Reference chat history" , style: Themes.semiBold(fontSize: 14 , color: Themes.white),),
              subtitle: Text("Let ChatGPT reference recent conversations when responding." ,style: Themes.regular(color: Themes.grey),),
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
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
            ),
            Divider(color: Colors.white24,),
          ListTile(
  title: Text(
    "Manage memories",
    style: Themes.semiBold(color: Themes.white),
  ),
  trailing: ElevatedButton(
    onPressed: () {},
    style: ElevatedButton.styleFrom(
      backgroundColor: Themes.darkgrey1,   
      foregroundColor: Themes.white,   
      side: BorderSide(color: Colors.white24), 
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8), 
      ),
    ),
    child: Text(
      "Manage",
      style: Themes.regular(color: Themes.white),
    ),
  ),
),
Divider(color: Colors.white24),

            ListTile(
              title: Text("ChatGPT may use Memory to personalize queries to search providers, such as Bing. Learn more" , style: Themes.regular(color: Themes.grey),),
            )
          ],
        ),
      ), );
  
  }
}