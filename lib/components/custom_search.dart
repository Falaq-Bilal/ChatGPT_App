import 'package:chatgpt_app/utils/themes.dart';
import 'package:flutter/material.dart';

class SearchDialog extends StatelessWidget {
  const SearchDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Themes.darkgrey1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          maxWidth: 650, 
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min, 
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                style:  Themes.regular(color: Colors.white),
                decoration: InputDecoration(
                  hintText: "Search chats",
                  hintStyle:  Themes.regular(color: Themes.grey),
                  filled: true,
                  fillColor: Themes.darkgrey1,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              Divider(color: Themes.grey,),
              ListTile(
                leading: CircleAvatar(
              backgroundColor: Themes.darkgrey1,
                  child: Icon(Icons.note_alt_outlined , color: Themes.white,),
                ),
                title: Text("New Chat" , style: Themes.regular(color: Themes.white ),),
              ),
             SizedBox(height: 12,),
             ListTile(
              title: Text("Today" , style: Themes.regular(fontSize: 12 , color: Themes.white),)              ,
             ),
             SizedBox(height: 7,),
             ListTile(
              leading: CircleAvatar(
              backgroundColor: Themes.darkgrey1,
                child: Icon(Icons.chat_bubble_outline_rounded , color: Themes.white,),
              ),
              title: Text("Define Flutter" , style: Themes.regular(),),
             ),
               ListTile(
              leading: CircleAvatar(
              backgroundColor: Themes.darkgrey1,
                child: Icon(Icons.chat_bubble_outline_rounded , color: Themes.white,),
              ),
              title: Text("Define Flutter" , style: Themes.regular(),),
             ),
               ListTile(
              leading: CircleAvatar(
              backgroundColor: Themes.darkgrey1,
                child: Icon(Icons.chat_bubble_outline_rounded , color: Themes.white,),
              ),
              title: Text("Define Flutter" , style: Themes.regular(),),
             ),
               ListTile(
              leading: CircleAvatar(
              backgroundColor: Themes.darkgrey1,
                child: Icon(Icons.chat_bubble_outline_rounded , color: Themes.white,),
              ),
              title: Text("Define Flutter" , style: Themes.regular(),),
             ),
               ListTile(
              leading: CircleAvatar(
              backgroundColor: Themes.darkgrey1,
                child: Icon(Icons.chat_bubble_outline_rounded , color: Themes.white,),
              ),
              title: Text("Define Flutter" , style: Themes.regular(),),
             ),
               ListTile(
              leading: CircleAvatar(
              backgroundColor: Themes.darkgrey1,
                child: Icon(Icons.chat_bubble_outline_rounded , color: Themes.white,),
              ),
              title: Text("Define Flutter" , style: Themes.regular(),),
             )
            ],
          ),
        ),
      ),
    );
  }
}
