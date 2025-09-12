import 'package:chatgpt_app/utils/themes.dart';
import 'package:chatgpt_app/view/settings_screen.dart';
import 'package:flutter/material.dart';

class MyCustomDrawer extends StatelessWidget {
  const MyCustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Themes.black,
      child: SafeArea(
        child: Column(
          children: [
            
        
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                width: 250,
                height: 40,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Themes.darkgrey,
                    
                   label: Text("Search" , style: Themes.textStyle(fontSize: 18 , color: Themes.white),),
                    prefixIcon: const Icon(Icons.search , color: Themes.white,),
                    border: OutlineInputBorder(
                      
                    
                      borderRadius: BorderRadius.circular(20),
                    
                    ),
                    focusedBorder: OutlineInputBorder(
                  
                      borderRadius: BorderRadius.circular(20)
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 10),

      
            Expanded(
              child: ListView(
                children:  [
                  ListTile(
                    leading: Icon(Icons.note_alt_outlined,color: Themes.white,),
                    title: Text("New Chat", 
                    style: Themes.regular(fontSize: 15 , color: Themes.white)),
                  ),
                  ListTile(
                    leading: Icon(Icons.library_music , color: Themes.white,),
                    title: Text("Library",style: Themes.regular(fontSize: 15 , color: Themes.white)),
                  ),
                  ListTile(
                    leading: Image(
                      image: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSEWm9r6BEttA05IH0uOlgQ_hfFOwbkNB4bsg&s", 
                      ),
                      height: 20, fit: BoxFit.fill,
                    ),
                    title: Text("GPTs",style: Themes.regular(fontSize: 15 , color: Themes.white),)
                  ),
                  SizedBox(height: 10,),
                  ListTile(
                    title: Text("What are widgets?" ,style: Themes.regular(fontSize: 15 ,  color: Themes.white)),
                  ),

                  ListTile(
                    title: Text("Role of Scaffold in Flutter" , style: Themes.regular(fontSize: 15 , color: Themes.white),),
                  ),

                     ListTile(
                    title: Text("Difference between stateful and stateless widget" , style: Themes.regular(fontSize: 15 , color: Themes.white),),)
                ],
              ),
            ),

            
            InkWell
            (
              onTap: (){
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => SettingsScreen()));
              },
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Themes.black,
                  borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
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
                      child: Text("FA" , style: Themes.regular(fontSize: 18 ,   color: Themes.white),),
                      
                    ),
                    const SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        Text(
                          "Falaq",
                          style: Themes.semiBold( fontSize: 16 , color: Themes.white),
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
