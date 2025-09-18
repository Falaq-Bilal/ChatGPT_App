import 'package:chatgpt_app/utils/themes.dart';
import 'package:flutter/material.dart';

class CustomConnectedApps extends StatelessWidget {
  const CustomConnectedApps({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Themes.darkgrey1,
      padding: const EdgeInsets.all(16),
      child: 
      SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
            
              title: Text("File Uploads" , style: Themes.regular(color: Themes.white , fontSize: 18),),
              subtitle: Text("These apps will allow you to add files to ChatGPT messages." , style: Themes.regular(color: Themes.grey),),
            ), 
            Divider(color: Colors.white24,),
            ListTile(
                leading: CircleAvatar(
                  radius: 18,
                  backgroundColor: Themes.darkgrey1,
          
              
                  backgroundImage: NetworkImage("https://tse4.mm.bing.net/th/id/OIP.HEfujkdQ1yVYLGTxAArc2QHaEK?pid=Api&P=0&h=220"), 
                ),
            
        
              title: Text("Google Drive" , style: Themes.regular(color: Themes.white),),
              subtitle: Text("Upload Google Docs, Sheets, Slides and other files." , style: Themes.regular(fontSize: 12,color: Themes.white),),
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
        "Connect",
        style: Themes.regular(color: Themes.white),
            ),
          ),
            ),
            Divider(color: Colors.white24,),
             ListTile(
              leading: CircleAvatar(
                backgroundColor: Themes.darkgrey1,
                backgroundImage: NetworkImage("https://static1.anpoimages.com/wordpress/wp-content/uploads/wm/2024/11/onedrive-hero-new-logo.jpg"),
              ),
        
              title: Text("Microsoft Onedrive (personal)" , style: Themes.regular(color: Themes.white),),
              subtitle: Text("Upload MicroSoft Word, Excel, PowerPoint and other files." , style: Themes.regular( fontSize: 12, color: Themes.white),),
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
        "Connect",
        style: Themes.regular(color: Themes.white),
            ),
          ),
            ),
            Divider(color: Colors.white24,),
             ListTile(
              leading: CircleAvatar(
                backgroundColor: Themes.darkgrey1,
                backgroundImage: NetworkImage("https://static1.anpoimages.com/wordpress/wp-content/uploads/wm/2024/11/onedrive-hero-new-logo.jpg"),
              ),
        
              title: Text("Microsoft Onedrive (work/school)" , style: Themes.regular(color: Themes.white),),
              subtitle: Text("Upload Microsoft Word, Excel, PowerPoint and other files, including those from SharePoint sites." , style: Themes.regular(color: Themes.white),),
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
        "Connect",
        style: Themes.regular(color: Themes.white),
            ),
          ),
            ),
            
            
          ],
        ),
      ),
    );
  }
}