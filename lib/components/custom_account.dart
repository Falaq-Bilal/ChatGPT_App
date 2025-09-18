import 'package:chatgpt_app/utils/themes.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomAccount extends StatelessWidget {
  const CustomAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( // ✅ Scaffold add kiya taake proper screen mile
      backgroundColor: Themes.darkgrey1,
      body: SafeArea( // ✅ notch/gesture area ka issue fix
        child: SingleChildScrollView( // ✅ sari content scrollable
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Text("Account",
                  style: Themes.regular(fontSize: 17, color: Themes.white)),
              const Divider(color: Colors.white24),

              // Upgrade button
              ListTile(
                title: Text("Get ChatGPT Plus",
                    style: Themes.regular(color: Themes.white)),
                trailing: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Themes.white,
                    foregroundColor: Themes.black,
                    side: const BorderSide(color: Colors.white),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  child: Text("Upgrade",
                      style: Themes.regular(color: Themes.black)),
                ),
              ),

              // ✅ Scrollable container section
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Themes.black,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ListTile(
                      title: Text("Get everything in free and more.",
                          style: Themes.semiBold(
                              fontSize: 14, color: Themes.white)),
                    ),
                    ListTile(
                      leading: const Icon(Icons.check, color: Colors.white),
                      title: Text("Extended limits on GPT-5, our flagship model",
                          style: Themes.regular(color: Themes.white)),
                    ),
                    ListTile(
                      leading: const Icon(Icons.check, color: Colors.white),
                      title: Text("Standard and advanced voice mode",
                          style: Themes.regular(color: Themes.white)),
                    ),
                    ListTile(
                      leading: const Icon(Icons.check, color: Colors.white),
                      title: Text(
                          "Access to deep research, multiple reasoning models (o4-mini, o4-mini-high, and o3), and a research review of GPT-4.5",
                          style: Themes.regular(color: Themes.white)),
                    ),
                    ListTile(
                      leading: const Icon(Icons.check, color: Colors.white),
                      title: Text("Create and use tasks, projects and custom GPTs",
                          style: Themes.regular(color: Themes.white)),
                    ),
                    ListTile(
                      leading: const Icon(Icons.check, color: Colors.white),
                      title: Text("Limited access to Sora video generation",
                          style: Themes.regular(color: Themes.white)),
                    ),
                    ListTile(
                      leading: const Icon(Icons.check, color: Colors.white),
                      title: Text("Opportunities to test new features",
                          style: Themes.regular(color: Themes.white)),
                    ),
                  ],
                ),
              ),

              const Divider(color: Colors.white24),
              const SizedBox(height: 10),

              // Delete Account
              ListTile(
                title: Text("Delete account",
                    style: Themes.regular(color: Themes.white)),
                trailing: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Themes.darkgrey1,
                    foregroundColor: Themes.red,
                    side: const BorderSide(color: Colors.red),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  child: Text("Delete", style: Themes.regular(color: Themes.red)),
                ),
              ),

              const SizedBox(height: 15),

              // Builder Profile Section
              ListTile(
                title: Text("ChatGPT builder profile",
                    style: Themes.regular(fontSize: 16, color: Themes.white)),
              ),
              const Divider(color: Colors.white24),
              ListTile(
                title: Text(
                  "Personalize your builder profile to connect with users of your GPTs.",
                  style: Themes.regular(fontSize: 13, color: Themes.white),
                ),
                subtitle: Text(
                  "These settings apply to publicly shared GPTs",
                  style: Themes.regular(fontSize: 13, color: Themes.white),
                ),
              ),

              ListTile(
                leading: Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Themes.darkgrey),
                    color: Themes.darkgrey1,
                  ),
                  child: const Icon(Icons.check_box_outline_blank_sharp,
                      color: Colors.grey, size: 16),
                ),
                title: Text("PlaceholderGPT",
                    style: Themes.semiBold(color: Themes.white)),
                subtitle: Row(
                  children: [
                    Text("By community builder",
                        style: Themes.regular(color: Colors.white24)),
                    const SizedBox(width: 7),
                    const Icon(Icons.person_outline_outlined,
                        color: Colors.grey, size: 18),
                  ],
                ),
              ),

              const SizedBox(height: 10),

              // Verification Box
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.white24),
                  color: Themes.darkgrey1,
                ),
                child: ListTile(
                  leading: const Icon(Icons.info_outline, color: Colors.white),
                  title: Text(
                      "Complete verification to publish GPTs to everyone. Verify your identity by adding billing details or verifying ownership of a public domain name.",
                      style: Themes.regular(color: Themes.white)),
                ),
              ),

              const Divider(color: Colors.white24),

              // Links Section
              ListTile(
                title: Text("Links",
                    style: Themes.semiBold(fontSize: 14, color: Themes.white)),
              ),
              ListTile(
                leading: const Icon(Icons.language, color: Colors.white),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("Select a domain",
                        style: Themes.regular(color: Themes.white)),
                    const SizedBox(width: 4),
                    const Icon(Icons.keyboard_arrow_down_sharp,
                        color: Colors.white),
                  ],
                ),
              ),

              // LinkedIn Example
              ListTile(
                leading: Image.network(
                    "https://tse4.mm.bing.net/th/id/OIP.W6dfNygLq_qAoNrRT5HHKwHaHa?pid=Api&P=0&h=220",
                    height: 30,
                    width: 30),
                title: Text("LinkedIn", style: Themes.regular()),
                trailing: ElevatedButton(
                  onPressed: () async {
                    final Uri url = Uri.parse("https://www.linkedin.com");
                    await launchUrl(url, mode: LaunchMode.externalApplication);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Themes.darkgrey1,
                    foregroundColor: Themes.white,
                    side: const BorderSide(color: Colors.white24),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  child: Text("Add", style: Themes.regular(color: Themes.white)),
                ),
              ),

              const Divider(color: Colors.white24),

              // Emails
              ListTile(
                title: Text("Emails", style: Themes.semiBold(fontSize: 14)),
              ),
              ListTile(
                leading: const Icon(Icons.email_outlined, color: Colors.white),
                title: Text("falaqdevsinn@gmail.com", style: Themes.regular()),
              ),
              ListTile(
                leading: const Icon(Icons.square, color: Colors.white),
                title: Text("Receive feedback emails",
                    style: Themes.regular()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
