import 'package:chatgpt_app/utils/themes.dart';
import 'package:chatgpt_app/view/chatgpt_desktop.dart';
import 'package:flutter/material.dart';

class LibraryScreen extends StatelessWidget {
  const LibraryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed:(){
          Navigator.pop(context);
  
        }, icon: Icon(Icons.arrow_back_ios , color: Themes.white,)),
        title: Text("Images" , style: Themes.regular(fontSize: 24,color: Themes.white),),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: GridView.builder(
        padding: const EdgeInsets.all(12),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, 
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
        ),
        itemCount: 9, // abhi 6 containers dikhayenge
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              color: Colors.grey[800], 
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(image: NetworkImage("https://tse3.mm.bing.net/th/id/OIP.4sygsxs6vEJ6ZW_1utqAmgHaFk?pid=Api&P=0&h=220") , fit: BoxFit.cover)
            ),
        
            );
        }
         )
    );
        }
  
  }
