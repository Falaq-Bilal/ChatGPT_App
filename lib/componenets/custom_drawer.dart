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
                    
                   label: Text("Search" , style: TextStyle(fontSize: 18 , color: Themes.white),),
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
                children: const [
                  ListTile(
                    leading: Icon(Icons.note_alt_outlined,color: Themes.white,),
                    title: Text("New Chat",style: TextStyle(fontSize: 15 , color: Themes.white)),
                  ),
                  ListTile(
                    leading: Icon(Icons.library_music , color: Themes.white,),
                    title: Text("Library",style: TextStyle(fontSize: 15 , color: Themes.white)),
                  ),
                  ListTile(
                    leading: Image(
                      image: NetworkImage(
                        "https://tse2.mm.bing.net/th/id/OIP.qRPF0BZXUlHRwGClJ-2v0QAAAA?pid=Api&P=0&h=220", 
                      ),
                      height: 20, fit: BoxFit.fill,
                    ),
                    title: Text("GPTs",style: TextStyle(fontSize: 15 , color: Themes.white),)
                  ),
                  SizedBox(height: 10,),
                  ListTile(
                    title: Text("What are widgets?" ,style: TextStyle(fontSize: 15 ,  color: Themes.white)),
                  ),

                  ListTile(
                    title: Text("Role of Scaffold in Flutter" , style: TextStyle(fontSize: 15 , color: Themes.white),),
                  )
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
                    const CircleAvatar(
                      radius: 24,
                      backgroundColor: Themes.darkgrey,
                      child: Text("FA" , style: TextStyle(fontSize: 18 ,   color: Themes.white),),
                      
                    ),
                    const SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Falaq",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16 , color: Themes.white),
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
