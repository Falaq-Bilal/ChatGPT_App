
import 'package:chatgpt_app/components/custom_whitebutton.dart';
import 'package:chatgpt_app/utils/themes.dart';
import 'package:chatgpt_app/view/voice_screen.dart';
import 'package:flutter/material.dart';

class VoiceScreen2 extends StatelessWidget {
  const VoiceScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Themes.black,
      appBar: AppBar(
        backgroundColor: Themes.black,
        scrolledUnderElevation: 0,
        leading: IconButton(onPressed: (){Navigator.pop(context);
        Navigator.push(context, MaterialPageRoute(builder: (context) => VoiceScreen()));}, icon: Icon(Icons.arrow_back, color: Themes.white,)),
        title:  Text("Choose a voice"  , style: Themes.regular(color: Themes.white)),
      ),
      body: Column( crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 100,),
          Center(child: CircleAvatar(
            radius: 100,
            backgroundImage: NetworkImage("data:image/jpeg;base64,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"),
          ),),
          SizedBox(height: 15,),
          Text("Breeze" , style: Themes.semiBold(fontSize: 22 ,color: Themes.white),),
          SizedBox(height: 10,),
          Text("Animated and earnest" , style: Themes.regular(fontSize: 17 , color: Themes.white),),
          Spacer(),

          WhiteButton(text: "Done", onPressed: (){}),
          SizedBox(height: 20,), 

        ],
      ),
      
    );
  }
}