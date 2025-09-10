
import 'package:chatgpt_app/components/custom_report.dart';
import 'package:flutter/material.dart';
import 'package:chatgpt_app/utils/themes.dart';
import 'report_dialog.dart';

/// 🔹 Detail Dialog for Sub-options
class ReportDetailScreen extends StatelessWidget {
  final String title;
  final List<String> subOptions;

  const ReportDetailScreen({
    Key? key,
    required this.title,
    required this.subOptions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      insetPadding: const EdgeInsets.all(12),
      child: Container(
        height: 400,
        decoration: BoxDecoration(
          color: Colors.grey[900],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            // 🔹 AppBar with Back button
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.grey[850],
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(20)),
              ),
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back, color: Colors.white),
                    onPressed: () {
                      Navigator.pop(context);
                      showDialog(
                        context: context,
                        builder: (_) => const ReportDialog(),
                      );
                    },
                  ),
                  Expanded(
                    child: Text(
                      title,
                      style:
                          Themes.semiBold(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),

            // 🔹 Sub-options list
            Expanded(
              child: ListView.builder(
                itemCount: subOptions.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      subOptions[index],
                      style:
                          Themes.regular(color: Colors.white, fontSize: 14),
                    ),
                    trailing: const Icon(Icons.arrow_forward_ios,
                        color: Colors.white, size: 16),
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                            content: Text("Selected: ${subOptions[index]}")),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
