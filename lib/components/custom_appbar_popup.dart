
import 'package:chatgpt_app/components/custom_report.dart';
import 'package:chatgpt_app/view/report_dialog.dart';
import 'package:chatgpt_app/view/share_screen.dart';
import 'package:flutter/material.dart';
import 'package:chatgpt_app/utils/themes.dart';

class MoreOptionsMenu extends StatelessWidget {
  const MoreOptionsMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      icon: Icon(Icons.more_vert_rounded, color: Themes.white),
      color: Themes.darkgrey,
      borderRadius: BorderRadius.circular(20),
      onSelected: (value) {
        if (value == 'Share') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => ShareScreen()),
          );
        } else if (value == 'Rename') {
          showDialog(
            context: context,
            builder: (context) {
              String newName = "";

              return StatefulBuilder(
                builder: (context, setState) {
                  return AlertDialog(
                    backgroundColor: Themes.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    content: TextField(
                      style: Themes.regular(color: Themes.white),
                      onChanged: (val) {
                        newName = val;
                      },
                      decoration: InputDecoration(
                        label: Text(
                          "New name",
                          style: Themes.regular(color: Themes.white),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Themes.white),
                        ),
                      ),
                    ),
                    actionsAlignment: MainAxisAlignment.end,
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: Text(
                          "Cancel",
                          style: Themes.regular(color: Themes.white),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("Renamed to $newName")),
                          );
                        },
                        child: Text(
                          "Rename",
                          style: Themes.regular(color: Themes.grey),
                        ),
                      ),
                    ],
                  );
                },
              );
            },
          );
        } else if (value == 'Archive') {
          // Archive ka action yahan likho
        } else if (value == 'Delete') {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                backgroundColor: Themes.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                
                content: Text(
                  "Are you sure you want to delete this chat?\n\nTo clear any memories from this chat, visit your settings.",
                  style: Themes.regular(
                    color: Themes.white,
                    fontSize: 14,
                  ),
                ),
                actionsAlignment: MainAxisAlignment.end,
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: Text("Cancel", style: Themes.textStyle(color: Themes.white)),
                  ),
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: Text("Delete", style: Themes.textStyle(color: Themes.red)),
                  ),
               
                ],
              );
            },
          );
        } else if (value == 'Report') {
          showDialog(
            context: context,
            builder: (context) => const ReportDialog(),
          );
        }
      },
      itemBuilder: (context) => [
        PopupMenuItem(
          value: 'Share',
          child: Row(
            children: [
              Icon(Icons.share, color: Themes.white, size: 18),
              SizedBox(width: 8),
              Text("Share", style: Themes.regular(color: Themes.white)),
            ],
          ),
        ),
        PopupMenuItem(
          value: 'Rename',
          child: Row(
            children: [
              Icon(Icons.edit, color: Themes.white, size: 18),
              SizedBox(width: 8),
              Text("Rename", style: Themes.regular(color: Themes.white)),
            ],
          ),
        ),
        PopupMenuItem(
          value: 'Archive',
          child: Row(
            children: [
              Icon(Icons.archive, color: Themes.white, size: 18),
              SizedBox(width: 8),
              Text("Archive", style: Themes.regular(color: Themes.white)),
            ],
          ),
        ),
        PopupMenuItem(
          value: 'Delete',
          child: Row(
            children: [
              Icon(Icons.delete, color: Themes.red, size: 18),
              SizedBox(width: 8),
              Text("Delete", style: Themes.regular(color: Themes.red)),
            ],
          ),
        ),
        PopupMenuItem(
          value: 'Report',
          child: Row(
            children: [
              Icon(Icons.flag_outlined, color: Themes.white, size: 18),
              SizedBox(width: 8),
              Text("Report", style: Themes.regular(color: Themes.white)),
            ],
          ),
        ),
      ],
    );
  }
}
