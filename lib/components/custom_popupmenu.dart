import 'package:chatgpt_app/utils/themes.dart';
import 'package:flutter/material.dart';

class CustomPopupmenu extends StatefulWidget {
  const CustomPopupmenu({super.key});

  @override
  State<CustomPopupmenu> createState() => _AccentColorTileState();
}

class _AccentColorTileState extends State<CustomPopupmenu> {
  String selected = "Default";

  // Colors list
  final Map<String, Color> colorOptions = {
    "Default": Colors.grey,
    "Blue": Themes.blue,
    "Green": Themes.lightGreenAccent,
    "Yellow": Themes.yellow,
    "Pink": Themes.pink,
    "Orange": Themes.lightOrange,
  };

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Themes.black,
        child: Icon(Icons.brush , color: Themes.white,),
      ),
      title:  Text("Accent Color", style: Themes.regular(fontSize: 17 ,  color: Themes.white)),
      subtitle: Text(selected , style: Themes.regular(color: Themes.white),),
      trailing: PopupMenuButton<String>(
        color: Themes.darkgrey,
        borderRadius: BorderRadius.circular(30),
        icon: const Icon(Icons.keyboard_arrow_down , color: Themes.white,),
        onSelected: (value) {
          setState(() {
            selected = value;
          });
        },
        itemBuilder: (context) {
          return colorOptions.entries.map((entry) {
            return PopupMenuItem<String>(
              
              value: entry.key,
              child: Row(
                
                children: [
                  CircleAvatar(backgroundColor: entry.value, radius: 8),
                  const SizedBox(width: 10),
                  Text(entry.key , style: Themes.regular(color: Themes.white),),
                  if (selected == entry.key) ...[
                    const Spacer(),
                    const Icon(Icons.check, size: 18, color: Colors.white),
                  ]
                ],
              ),
            );
          }).toList();
        },
      ),
      // 👇 pura tile tap hoga to kuch nahi hoga
      onTap: () {},
    );
  }
}
