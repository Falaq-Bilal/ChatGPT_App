import 'package:chatgpt_app/view/report_dialog.dart';
import 'package:flutter/material.dart';
import 'package:chatgpt_app/utils/themes.dart';
import 'package:chatgpt_app/model/report_categories.dart';


/// 🔹 Main Report Dialog
class ReportDialog extends StatelessWidget {
  const ReportDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final options = reportCategories.keys.toList();

    return Dialog(
      backgroundColor: Colors.transparent,
      insetPadding: const EdgeInsets.all(12),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.grey[900],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Report Conversation",
                style: Themes.semiBold(color: Colors.white, fontSize: 18)),
            const SizedBox(height: 8),
            Text("Why are you reporting this conversation?",
                style: Themes.regular(color: Colors.white, fontSize: 15)),
            const SizedBox(height: 16),
            ...options.map(
              (item) => InkWell(
                onTap: () {
                  Navigator.pop(context);
                  showDialog(
                    context: context,
                    builder: (_) => ReportDetailScreen(
                      title: item,
                      subOptions: reportCategories[item] ?? [],
                    ),
                  );
                },
                borderRadius: BorderRadius.circular(12),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(item,
                          style: Themes.regular(
                              color: Colors.white, fontSize: 16)),
                      const Icon(Icons.arrow_forward_ios,
                          color: Colors.white, size: 16),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
