import 'package:chatgpt_app/utils/themes.dart';
import 'package:flutter/material.dart';

class CustomSecurity extends StatelessWidget {
  const CustomSecurity({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
color: Themes.darkgrey1,
padding: EdgeInsets.all(16),
child: SingleChildScrollView(
  child: Column(
    children: [
      Text("Security" , style: Themes.regular(fontSize: 17 , color: Themes.white),),
      Divider(color: Colors.white24,),
      ListTile(
      title: Text("Multi-factor authentication" , style: Themes.regular(color: Themes.white),),
      subtitle: Text("Requires and extra security challenge when logging in. If you are unable to pass this challenge, you will have the option to recover your account via email." , style: Themes.regular(fontSize: 12 , color: Colors.white24),),
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
                title: Text("Logout of this device" , style: Themes.regular(color: Themes.white),),
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
        "Log out",
        style: Themes.regular(color: Themes.white),
      ),
    ),
              ),
               Divider(color: Colors.white24,),
              ListTile(
                title: Text("Log out of all devices" , style: Themes.regular(color: Themes.white),),
                subtitle: Text("Log out of all active sessions across all devices, including your current session. It may take up 30 minutes for other devices to be logged out." , style: Themes.regular(fontSize: 12 , color: Colors.white24),),
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
        "Log out all",
        style: Themes.regular(color: Themes.red),
      ),
    ),
              ),
              SizedBox(height: 20,),
              ListTile(
                title: Text("Secure sign in with ChatGPT" , style: Themes.regular(fontSize: 17, color: Themes.white),),
                subtitle: Text("Sign in to websites and apps across the internet with the trusted security of ChatGPT. Learn more." , style: Themes.regular(fontSize: 13 , color: Colors.white24),),
              ),
              Divider(color: Colors.white24,),
              SizedBox(height: 7,),
              Container(
                height: 75,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                color: Themes.darkgrey),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("You haven't used ChatGPT to sign into any websites or apps yet. Once you do, they'll show up here." , style: Themes.regular(color: Themes.white),),
                ),
              )
  
    ],
  ),
),
    );
  }
}