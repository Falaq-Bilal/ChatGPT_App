import 'package:chatgpt_app/utils/themes.dart';
import 'package:flutter/material.dart';

class CustomDataControls extends StatelessWidget {
  const CustomDataControls({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Themes.darkgrey1,
      padding:EdgeInsets.all(16) ,
      child: Column(
        children: [
        Text("Data Controls" , style: Themes.regular(fontSize: 17 , color: Themes.white),),
        Divider(color: Colors.white24,),
         ListTile(
              title: Text("Improve the model for everyone" , style: Themes.regular(color: Themes.white),),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("On", style: Themes.regular(color: Themes.white),),
                  SizedBox(width: 4,),
                  Icon(Icons.arrow_forward_ios , color: Themes.white,)
                ],
              ),
            ),
            Divider(color: Colors.white24,),
            ListTile(
              title: Text("Shared links" , style: Themes.regular(color: Themes.white),),
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
             Divider(color: Colors.white24,),
            ListTile(
              title: Text("Archived chats" , style: Themes.regular(color: Themes.white),),
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
             Divider(color: Colors.white24,),
            ListTile(
              title: Text("Archive all chats" , style: Themes.regular(color: Themes.white),),
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
      "Archive all",
      style: Themes.regular(color: Themes.white),
    ),
  ),
            ),
             Divider(color: Colors.white24,),
            ListTile(
              title: Text("Delete all chats" , style: Themes.regular(color: Themes.white),),
              trailing: ElevatedButton(
    onPressed: () {},
    style: ElevatedButton.styleFrom(
      backgroundColor: Themes.darkgrey1,   
      foregroundColor: Themes.white,   
      side: BorderSide(color: Colors.red), 
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8), 
      ),
    ),
    child: Text(
      "Delete all",
      style: Themes.regular(color: Themes.red),
    ),
  ),
            ),
             Divider(color: Colors.white24,),
            ListTile(
              title: Text("Export data" , style: Themes.regular(color: Themes.white),),
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
      "Export",
      style: Themes.regular(color: Themes.white),
    ),
  ),
            )
        ],
      ),
      
    );
  }
}