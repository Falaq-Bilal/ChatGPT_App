import 'package:chatgpt_app/utils/themes.dart';
import 'package:chatgpt_app/view/settings_screen.dart';
import 'package:flutter/material.dart';

class SecurityScreen extends StatelessWidget {
  const SecurityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Themes.black,
      appBar: AppBar(
        backgroundColor: Themes.black,
        scrolledUnderElevation: 0,
        leading: IconButton(onPressed: (){Navigator.pop(context);
        Navigator.push(context, MaterialPageRoute(builder: (context)=> SettingsScreen()));}, icon: Icon(Icons.arrow_back , color: Themes.white,)),
        title: Text("Security"  , style: Themes.regular(color: Themes.white)),
      ),
      body: ListTile(
        title: Text("Multi-factor authentication" , style: Themes.semiBold(color: Themes.white),),
        subtitle: Text("Require an extra security challenge when logging in. If you are unable to pass this challenge, you will have the option to recover your account via email" , style: Themes.regular(color: Themes.white, fontSize: 12),),
        trailing: Container(
                        height: 25,
                        width: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Themes.darkgrey
                        ),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color:Themes.white,
                            ),
                          ),
                        ),
                      ),
      ),
    );
  }
}